; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_get_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_task_get_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }

@TASK_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_get_exception_ports(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3, i64* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TASK_NULL, align 8
  %21 = icmp eq %struct.TYPE_8__* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %8, align 4
  br label %186

24:                                               ; preds = %7
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @EXC_MASK_VALID, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %8, align 4
  br label %186

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = call i32 @itk_lock(%struct.TYPE_8__* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IP_NULL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = call i32 @itk_unlock(%struct.TYPE_8__* %41)
  %43 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %43, i32* %8, align 4
  br label %186

44:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  %45 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %177, %44
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %180

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %16, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %176

56:                                               ; preds = %50
  store i32 0, i32* %17, align 4
  br label %57

57:                                               ; preds = %116, %56
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %119

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %13, align 8
  %71 = load i32, i32* %17, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %69, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %61
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i32, i32* %17, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %76
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %16, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %15, align 8
  %101 = load i32, i32* %17, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %91
  %107 = load i32, i32* %16, align 4
  %108 = shl i32 1, %107
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %17, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %119

115:                                              ; preds = %91, %76, %61
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %17, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %57

119:                                              ; preds = %106, %57
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %175

123:                                              ; preds = %119
  %124 = load i32, i32* %16, align 4
  %125 = shl i32 1, %124
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %17, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @ipc_port_copy_send(i64 %137)
  %139 = load i64*, i64** %13, align 8
  %140 = load i32, i32* %17, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64*, i64** %14, align 8
  %152 = load i32, i32* %17, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 %150, i64* %154, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %15, align 8
  %164 = load i32, i32* %17, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 %162, i64* %166, align 8
  %167 = load i32, i32* %18, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %18, align 4
  %169 = load i32, i32* %18, align 4
  %170 = load i32*, i32** %12, align 8
  %171 = load i32, i32* %170, align 4
  %172 = icmp ugt i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %123
  br label %180

174:                                              ; preds = %123
  br label %175

175:                                              ; preds = %174, %119
  br label %176

176:                                              ; preds = %175, %50
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %16, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %46

180:                                              ; preds = %173, %46
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %182 = call i32 @itk_unlock(%struct.TYPE_8__* %181)
  %183 = load i32, i32* %18, align 4
  %184 = load i32*, i32** %12, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %180, %40, %30, %22
  %187 = load i32, i32* %8, align 4
  ret i32 %187
}

declare dso_local i32 @itk_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @itk_unlock(%struct.TYPE_8__*) #1

declare dso_local i64 @ipc_port_copy_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
