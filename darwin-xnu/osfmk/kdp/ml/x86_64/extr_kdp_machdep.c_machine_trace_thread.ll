; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/x86_64/extr_kdp_machdep.c_machine_trace_thread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/x86_64/extr_kdp_machdep.c_machine_trace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@VM_MAP_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"32-bit trace attempted on 64-bit kernel\00", align 1
@RETURN_OFFSET = common dso_local global i32 0, align 4
@kThreadTruncatedBT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_trace_thread(%struct.TYPE_9__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %15, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 2, i32 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -67108864, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i64 0, i64* %23, align 8
  %35 = load i32, i32* @VM_MAP_NULL, align 4
  store i32 %35, i32* %24, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ugt i8* %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %7
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = sdiv i64 %45, %47
  %49 = trunc i64 %48 to i32
  %50 = call i32 @MIN(i32 %40, i32 %49)
  br label %52

51:                                               ; preds = %7
  br label %52

52:                                               ; preds = %51, %39
  %53 = phi i32 [ %50, %39 ], [ 0, %51 ]
  store i32 %53, i32* %11, align 4
  %54 = load i64, i64* %12, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = call %struct.TYPE_8__* @USER_REGS32(%struct.TYPE_9__* %57)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %25, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %24, align 4
  br label %72

70:                                               ; preds = %52
  %71 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %56
  store i32 0, i32* %20, align 4
  br label %73

73:                                               ; preds = %153, %72
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %156

77:                                               ; preds = %73
  %78 = load i32, i32* %21, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %15, align 8
  store i32 %78, i32* %79, align 4
  %81 = load i64, i64* %13, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %18, align 4
  %85 = load i32*, i32** %15, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %15, align 8
  store i32 %84, i32* %85, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90, %87
  br label %156

95:                                               ; preds = %90
  %96 = load i32, i32* %18, align 4
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %156

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %156

105:                                              ; preds = %100
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %156

110:                                              ; preds = %105
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* @RETURN_OFFSET, align 4
  %113 = add nsw i32 %111, %112
  %114 = load i32, i32* %24, align 4
  %115 = load i32*, i32** %14, align 8
  %116 = call i64 @machine_trace_thread_get_kva(i32 %113, i32 %114, i32* %115)
  store i64 %116, i64* %23, align 8
  %117 = load i64, i64* %23, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %110
  %120 = load i32*, i32** %14, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* @kThreadTruncatedBT, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %119
  br label %156

128:                                              ; preds = %110
  %129 = load i64, i64* %23, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %18, align 4
  store i32 %132, i32* %22, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32*, i32** %14, align 8
  %136 = call i64 @machine_trace_thread_get_kva(i32 %133, i32 %134, i32* %135)
  store i64 %136, i64* %23, align 8
  %137 = load i64, i64* %23, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load i64, i64* %23, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %18, align 4
  br label %152

143:                                              ; preds = %128
  store i32 0, i32* %18, align 4
  %144 = load i32*, i32** %14, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* @kThreadTruncatedBT, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %146, %143
  br label %152

152:                                              ; preds = %151, %139
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %20, align 4
  br label %73

156:                                              ; preds = %127, %109, %104, %99, %94, %73
  %157 = call i32 (...) @machine_trace_thread_clear_validation_cache()
  %158 = load i32*, i32** %15, align 8
  %159 = bitcast i32* %158 to i8*
  %160 = load i8*, i8** %9, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = trunc i64 %163 to i32
  ret i32 %164
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_8__* @USER_REGS32(%struct.TYPE_9__*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @machine_trace_thread_get_kva(i32, i32, i32*) #1

declare dso_local i32 @machine_trace_thread_clear_validation_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
