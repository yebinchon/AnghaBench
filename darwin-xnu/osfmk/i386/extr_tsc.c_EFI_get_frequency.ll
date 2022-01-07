; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_tsc.c_EFI_get_frequency.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_tsc.c_EFI_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/efi/platform\00", align 1
@kSuccess = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"EFI_get_frequency: didn't find /efi/platform\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"EFI_get_frequency: property %s not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"EFI_get_frequency: read %s value: %llu\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"InitialTSC\00", align 1
@tsc_at_boot = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"EFI_get_frequency: read InitialTSC: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @EFI_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @EFI_get_frequency(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %8 = call i64 @DTLookupEntry(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = load i64, i64* @kSuccess, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @DTGetProperty(i32 %14, i8* %15, i8** %6, i32* %7)
  %17 = load i64, i64* @kSuccess, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i8* null, i8** %2, align 8
  br label %51

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %24, 8
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i8**
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @DTGetProperty(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %6, i32* %7)
  %36 = load i64, i64* @kSuccess, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp eq i64 %40, 8
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = bitcast i8* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** @tsc_at_boot, align 8
  %46 = load i8*, i8** @tsc_at_boot, align 8
  %47 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %42, %38
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %49, %19, %11
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i64 @DTLookupEntry(i32, i8*, i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i64 @DTGetProperty(i32, i8*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
