; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-time.c_setTimeZone.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/extr_esp32-hal-time.c_setTimeZone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.setTimeZone.cdt = private unnamed_addr constant [17 x i8] c"DST\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [17 x i8] c"UTC%ld:%02u:%02u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"UTC%ld\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DST%ld:%02u:%02u\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DST%ld\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @setTimeZone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setTimeZone(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [17 x i8], align 16
  %6 = alloca [17 x i8], align 16
  %7 = alloca [33 x i8], align 16
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [17 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 17, i1 false)
  %10 = bitcast [17 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.setTimeZone.cdt, i32 0, i32 0), i64 17, i1 false)
  %11 = bitcast [33 x i8]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 33, i1 false)
  %12 = load i64, i64* %3, align 8
  %13 = srem i64 %12, 3600
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %17 = load i64, i64* %3, align 8
  %18 = sdiv i64 %17, 3600
  %19 = load i64, i64* %3, align 8
  %20 = srem i64 %19, 3600
  %21 = sdiv i64 %20, 60
  %22 = call i32 @abs(i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = srem i64 %23, 60
  %25 = call i32 @abs(i64 %24)
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %22, i32 %25)
  br label %32

27:                                               ; preds = %2
  %28 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %29 = load i64, i64* %3, align 8
  %30 = sdiv i64 %29, 3600
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  br label %32

32:                                               ; preds = %27, %15
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 3600
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %36, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = srem i64 %40, 3600
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %45 = load i64, i64* %8, align 8
  %46 = sdiv i64 %45, 3600
  %47 = load i64, i64* %8, align 8
  %48 = srem i64 %47, 3600
  %49 = sdiv i64 %48, 60
  %50 = call i32 @abs(i64 %49)
  %51 = load i64, i64* %8, align 8
  %52 = srem i64 %51, 60
  %53 = call i32 @abs(i64 %52)
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %46, i32 %50, i32 %53)
  br label %60

55:                                               ; preds = %35
  %56 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %57 = load i64, i64* %8, align 8
  %58 = sdiv i64 %57, 3600
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %55, %43
  br label %61

61:                                               ; preds = %60, %32
  %62 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  %63 = getelementptr inbounds [17 x i8], [17 x i8]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [17 x i8], [17 x i8]* %6, i64 0, i64 0
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %64)
  %66 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 0
  %67 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %66, i32 1)
  %68 = call i32 (...) @tzset()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @abs(i64) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @tzset(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
