; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_sp.c_thread_set_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_sp.c_thread_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@PROCESSOR_SET_NULL = common dso_local global i32* null, align 8
@pset0 = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@POLICY_RR_BASE_COUNT = common dso_local global i32 0, align 4
@POLICY_RR_LIMIT_COUNT = common dso_local global i32 0, align 4
@POLICY_FIFO_BASE_COUNT = common dso_local global i32 0, align 4
@POLICY_FIFO_LIMIT_COUNT = common dso_local global i32 0, align 4
@POLICY_TIMESHARE_BASE_COUNT = common dso_local global i32 0, align 4
@POLICY_TIMESHARE_LIMIT_COUNT = common dso_local global i32 0, align 4
@KERN_INVALID_POLICY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thread_set_policy(i64 %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_11__*, align 8
  %23 = alloca %struct.TYPE_8__*, align 8
  %24 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @THREAD_NULL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %7
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** @PROCESSOR_SET_NULL, align 8
  %32 = icmp eq i32* %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, @pset0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %29, %7
  %37 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %37, i64* %8, align 8
  br label %164

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @invalid_policy(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %43, i64* %8, align 8
  br label %164

44:                                               ; preds = %38
  %45 = load i32, i32* %11, align 4
  switch i32 %45, label %145 [
    i32 129, label %46
    i32 130, label %79
    i32 128, label %112
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %19, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %20, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @POLICY_RR_BASE_COUNT, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @POLICY_RR_LIMIT_COUNT, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %46
  %61 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %61, i64* %18, align 8
  br label %147

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i32 @invalid_pri(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @invalid_pri(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %62
  %77 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %77, i64* %18, align 8
  br label %147

78:                                               ; preds = %72
  br label %147

79:                                               ; preds = %44
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %21, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %22, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @POLICY_FIFO_BASE_COUNT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @POLICY_FIFO_LIMIT_COUNT, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89, %79
  %94 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %94, i64* %18, align 8
  br label %147

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %17, align 4
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @invalid_pri(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @invalid_pri(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105, %95
  %110 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %110, i64* %18, align 8
  br label %147

111:                                              ; preds = %105
  br label %147

112:                                              ; preds = %44
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %23, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = inttoptr i64 %117 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %118, %struct.TYPE_7__** %24, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @POLICY_TIMESHARE_BASE_COUNT, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @POLICY_TIMESHARE_LIMIT_COUNT, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %112
  %127 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %127, i64* %18, align 8
  br label %147

128:                                              ; preds = %122
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %17, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @invalid_pri(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @invalid_pri(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138, %128
  %143 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %143, i64* %18, align 8
  br label %147

144:                                              ; preds = %138
  br label %147

145:                                              ; preds = %44
  %146 = load i64, i64* @KERN_INVALID_POLICY, align 8
  store i64 %146, i64* %18, align 8
  br label %147

147:                                              ; preds = %145, %144, %142, %126, %111, %109, %93, %78, %76, %60
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* @KERN_SUCCESS, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i64, i64* %18, align 8
  store i64 %152, i64* %8, align 8
  br label %164

153:                                              ; preds = %147
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* @KERN_SUCCESS, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i64, i64* %9, align 8
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i64 @thread_set_mode_and_absolute_pri(i64 %158, i32 %159, i32 %160)
  store i64 %161, i64* %18, align 8
  br label %162

162:                                              ; preds = %157, %153
  %163 = load i64, i64* %18, align 8
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %162, %151, %42, %36
  %165 = load i64, i64* %8, align 8
  ret i64 %165
}

declare dso_local i64 @invalid_policy(i32) #1

declare dso_local i32 @invalid_pri(i32) #1

declare dso_local i64 @thread_set_mode_and_absolute_pri(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
