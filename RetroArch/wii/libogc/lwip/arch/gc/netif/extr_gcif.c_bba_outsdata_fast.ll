; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_outsdata_fast.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/arch/gc/netif/extr_gcif.c_bba_outsdata_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bba_outsdata_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bba_outsdata_fast(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %65

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = ptrtoint i8* %16 to i32
  %18 = sub nsw i32 0, %17
  %19 = and i32 %18, 31
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 %20, %21
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bba_outsdata(i8* %25, i32 %26)
  br label %65

28:                                               ; preds = %15
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @bba_outsdata(i8* %32, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr i8, i8* %39, i64 %40
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, -32
  store i32 %44, i32* %5, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @DCStoreRange(i8* %45, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @bba_outsdmadata(i8* %48, i32 %49, i32* null)
  %51 = call i32 (...) @bba_sync()
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr i8, i8* %56, i64 %57
  store i8* %58, i8** %7, align 8
  %59 = load i32, i32* %4, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @bba_outsdata(i8* %62, i32 %63)
  br label %65

65:                                               ; preds = %14, %24, %61, %42
  ret void
}

declare dso_local i32 @bba_outsdata(i8*, i32) #1

declare dso_local i32 @DCStoreRange(i8*, i32) #1

declare dso_local i32 @bba_outsdmadata(i8*, i32, i32*) #1

declare dso_local i32 @bba_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
