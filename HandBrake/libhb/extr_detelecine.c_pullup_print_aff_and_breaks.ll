; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_print_aff_and_breaks.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_detelecine.c_pullup_print_aff_and_breaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pullup_context = type { i32 }
%struct.pullup_field = type { i32, i32, %struct.pullup_field* }

@__const.pullup_print_aff_and_breaks.aff_l = private unnamed_addr constant [4 x i8] c"+..\00", align 1
@__const.pullup_print_aff_and_breaks.aff_r = private unnamed_addr constant [4 x i8] c"..+\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"affinity: \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%d%c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\0Abreaks:   \00", align 1
@PULLUP_BREAK_LEFT = common dso_local global i32 0, align 4
@PULLUP_BREAK_RIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pullup_context*, %struct.pullup_field*)* @pullup_print_aff_and_breaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pullup_print_aff_and_breaks(%struct.pullup_context* %0, %struct.pullup_field* %1) #0 {
  %3 = alloca %struct.pullup_context*, align 8
  %4 = alloca %struct.pullup_field*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pullup_field*, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  store %struct.pullup_context* %0, %struct.pullup_context** %3, align 8
  store %struct.pullup_field* %1, %struct.pullup_field** %4, align 8
  %9 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  store %struct.pullup_field* %9, %struct.pullup_field** %6, align 8
  %10 = bitcast [4 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.pullup_print_aff_and_breaks.aff_l, i32 0, i32 0), i64 4, i1 false)
  %11 = bitcast [4 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.pullup_print_aff_and_breaks.aff_r, i32 0, i32 0), i64 4, i1 false)
  %12 = call i32 @hb_log(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %18 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %27 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %33)
  %35 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %36 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %35, i32 0, i32 2
  %37 = load %struct.pullup_field*, %struct.pullup_field** %36, align 8
  store %struct.pullup_field* %37, %struct.pullup_field** %4, align 8
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.pullup_field*, %struct.pullup_field** %6, align 8
  store %struct.pullup_field* %42, %struct.pullup_field** %4, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %69, %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %49 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PULLUP_BREAK_LEFT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 124, i32 46
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %58 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PULLUP_BREAK_RIGHT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 124, i32 46
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %64)
  %66 = load %struct.pullup_field*, %struct.pullup_field** %4, align 8
  %67 = getelementptr inbounds %struct.pullup_field, %struct.pullup_field* %66, i32 0, i32 2
  %68 = load %struct.pullup_field*, %struct.pullup_field** %67, align 8
  store %struct.pullup_field* %68, %struct.pullup_field** %4, align 8
  br label %69

69:                                               ; preds = %47
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %44

72:                                               ; preds = %44
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hb_log(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
