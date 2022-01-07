; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/drivers/extr_oss.c_FODevice.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/drivers/extr_oss.c_FODevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEXYAL_ID_DEFAULT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"/dev/dsp\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@SEXYAL_ID_UNUSED = common dso_local global i64 0, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@IDBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @FODevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FODevice(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @SEXYAL_ID_DEFAULT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %12 = call i32 @sal_strcpy(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %75

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @SEXYAL_ID_UNUSED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %23 = call i32 @sal_strcpy(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = call i32 @sal_uinttos(i64 %29)
  %31 = call i32 @sal_strcat(i8* %27, i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %34 = load i32, i32* @O_WRONLY, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @open(i8* %33, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %48

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @ENOENT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %21, label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %75

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @F_SETFL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @F_GETFL, align 4
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %55, i32 %56)
  %58 = load i32, i32* @O_NONBLOCK, align 4
  %59 = xor i32 %58, -1
  %60 = and i32 %57, %59
  %61 = call i32 (i32, i32, ...) @fcntl(i32 %53, i32 %54, i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %75

63:                                               ; preds = %16
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %65 = call i32 @sal_strcpy(i8* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @IDBASE, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i32 @sal_uinttos(i64 %69)
  %71 = call i32 @sal_strcat(i8* %66, i32 %70)
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %73 = load i32, i32* @O_WRONLY, align 4
  %74 = call i32 @open(i8* %72, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %63, %52, %51, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @sal_strcpy(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @sal_strcat(i8*, i32) #1

declare dso_local i32 @sal_uinttos(i64) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
