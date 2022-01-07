; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcAddDataEntryBin.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcAddDataEntryBin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WpcAddDataEntryBin(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %12, %4
  br label %39

22:                                               ; preds = %18, %15
  %23 = load i32, i32* %8, align 4
  %24 = mul nsw i32 %23, 2
  %25 = add nsw i32 %24, 64
  %26 = call i8* @Malloc(i32 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @EncodeSafe64(i8* %27, i8* %28, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @StrLen(i8* %34)
  %36 = call i32 @WpcAddDataEntry(i32* %31, i8* %32, i8* %33, i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @Free(i8* %37)
  br label %39

39:                                               ; preds = %22, %21
  ret void
}

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @EncodeSafe64(i8*, i8*, i32) #1

declare dso_local i32 @WpcAddDataEntry(i32*, i8*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
