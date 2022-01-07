; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_get_exception_ports.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_thread_get_exception_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@THREAD_NULL = common dso_local global %struct.TYPE_8__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@EXC_MASK_VALID = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@FIRST_EXCEPTION = common dso_local global i32 0, align 4
@EXC_TYPES_COUNT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_get_exception_ports(%struct.TYPE_8__* %0, i32 %1, i32* %2, i32* %3, i64* %4, i64* %5, i64* %6) #0 {
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
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @THREAD_NULL, align 8
  %21 = icmp eq %struct.TYPE_8__* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %23, i32* %8, align 4
  br label %192

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
  br label %192

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %34 = call i32 @thread_mtx_lock(%struct.TYPE_8__* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = call i32 @thread_mtx_unlock(%struct.TYPE_8__* %40)
  %42 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %42, i32* %8, align 4
  br label %192

43:                                               ; preds = %32
  store i32 0, i32* %18, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp eq %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %186

49:                                               ; preds = %43
  %50 = load i32, i32* @FIRST_EXCEPTION, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %182, %49
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @EXC_TYPES_COUNT, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %185

55:                                               ; preds = %51
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %16, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %181

61:                                               ; preds = %55
  store i32 0, i32* %17, align 4
  br label %62

62:                                               ; preds = %121, %61
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %13, align 8
  %76 = load i32, i32* %17, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %74, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %66
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %14, align 8
  %91 = load i32, i32* %17, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %89, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %81
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %15, align 8
  %106 = load i32, i32* %17, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %104, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %96
  %112 = load i32, i32* %16, align 4
  %113 = shl i32 1, %112
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %17, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %124

120:                                              ; preds = %96, %81, %66
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %17, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %62

124:                                              ; preds = %111, %62
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %180

128:                                              ; preds = %124
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 1, %129
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %17, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @ipc_port_copy_send(i64 %142)
  %144 = load i64*, i64** %13, align 8
  %145 = load i32, i32* %17, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  store i64 %143, i64* %147, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64*, i64** %14, align 8
  %157 = load i32, i32* %17, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  store i64 %155, i64* %159, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %15, align 8
  %169 = load i32, i32* %17, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 %167, i64* %171, align 8
  %172 = load i32, i32* %18, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp uge i32 %174, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %128
  br label %185

179:                                              ; preds = %128
  br label %180

180:                                              ; preds = %179, %124
  br label %181

181:                                              ; preds = %180, %55
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %16, align 4
  %184 = add i32 %183, 1
  store i32 %184, i32* %16, align 4
  br label %51

185:                                              ; preds = %178, %51
  br label %186

186:                                              ; preds = %185, %48
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %188 = call i32 @thread_mtx_unlock(%struct.TYPE_8__* %187)
  %189 = load i32, i32* %18, align 4
  %190 = load i32*, i32** %12, align 8
  store i32 %189, i32* %190, align 4
  %191 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %186, %39, %30, %22
  %193 = load i32, i32* %8, align 4
  ret i32 %193
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_8__*) #1

declare dso_local i64 @ipc_port_copy_send(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
