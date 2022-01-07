; ModuleID = '/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_parse_datestring.c'
source_filename = "/home/carl/AnghaBench/HandBrake/gtk/src/extr_callbacks.c_parse_datestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }
%struct.tm = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"[0-9]{4}-[0-1]?[0-9]-[0-3]?[0-9]T[0-9]{2}:[0-9]{2}:[0-9]{2}Z\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%Y-%m-%dT%H:%M:%SZ\00", align 1
@__const.parse_datestring.ymdThmsZ = private unnamed_addr constant %struct.TYPE_2__ { i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 0 }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tm*)* @parse_datestring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_datestring(i8* %0, %struct.tm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tm*, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  %7 = alloca [1 x %struct.TYPE_2__], align 16
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tm* %1, %struct.tm** %5, align 8
  %9 = bitcast %struct.TYPE_2__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_2__* @__const.parse_datestring.ymdThmsZ to i8*), i64 24, i1 false)
  %10 = getelementptr inbounds [1 x %struct.TYPE_2__], [1 x %struct.TYPE_2__]* %7, i64 0, i64 0
  %11 = bitcast %struct.TYPE_2__* %10 to i8*
  %12 = bitcast %struct.TYPE_2__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 24
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1 x %struct.TYPE_2__], [1 x %struct.TYPE_2__]* %7, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i64 @hb_validate_param_string(i32 %22, i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1 x %struct.TYPE_2__], [1 x %struct.TYPE_2__]* %7, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tm*, %struct.tm** %5, align 8
  %34 = call i32 @av_small_strptime(i8* %27, i32 %32, %struct.tm* %33)
  store i32 1, i32* %3, align 4
  br label %40

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %13

39:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @hb_validate_param_string(i32, i8*) #2

declare dso_local i32 @av_small_strptime(i8*, i32, %struct.tm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
