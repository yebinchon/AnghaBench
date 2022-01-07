; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_get_test_mtx_stats_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_get_test_mtx_stats_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lck_mtx_test_stats_elem = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TEST_MTX_MAX_STATS = common dso_local global i32 0, align 4
@lck_mtx_test_stats = common dso_local global %struct.lck_mtx_test_stats_elem* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"samples %llu, \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tot %llu ns, \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"avg %llu ns, \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"max %llu ns, \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"min %llu ns\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" } \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_test_mtx_stats_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lck_mtx_test_stats_elem*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %169, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @TEST_MTX_MAX_STATS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %172

26:                                               ; preds = %22
  %27 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** @lck_mtx_test_stats, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %27, i64 %29
  store %struct.lck_mtx_test_stats_elem* %30, %struct.lck_mtx_test_stats_elem** %8, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %44 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %43, i32 0, i32 0
  %45 = call i32 @lck_spin_lock(i32* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %52 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %49, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %62 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @absolutetime_to_nanoseconds(i32 %63, i32* %9)
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %79 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @absolutetime_to_nanoseconds(i32 %80, i32* %9)
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %85, i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %96 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @absolutetime_to_nanoseconds(i32 %97, i32* %9)
  %99 = load i8*, i8** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %113 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @absolutetime_to_nanoseconds(i32 %114, i32* %9)
  %116 = load i8*, i8** %3, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %119, i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %4, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.lck_mtx_test_stats_elem*, %struct.lck_mtx_test_stats_elem** %8, align 8
  %130 = getelementptr inbounds %struct.lck_mtx_test_stats_elem, %struct.lck_mtx_test_stats_elem* %129, i32 0, i32 0
  %131 = call i32 @lck_spin_unlock(i32* %130)
  %132 = load i8*, i8** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* %4, align 4
  %137 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %135, i32 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %4, align 4
  %140 = sub nsw i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i8*, i8** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @print_test_mtx_stats_string_name(i32 %144, i8* %148, i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %4, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i8*, i8** %3, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i32, i32* %4, align 4
  %162 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %160, i32 %161, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %4, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %26
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %22

172:                                              ; preds = %22
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @lck_spin_lock(i32*) #1

declare dso_local i32 @absolutetime_to_nanoseconds(i32, i32*) #1

declare dso_local i32 @lck_spin_unlock(i32*) #1

declare dso_local i32 @print_test_mtx_stats_string_name(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
