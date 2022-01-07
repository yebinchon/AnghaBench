; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_DecodeSafe64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_DecodeSafe64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeSafe64(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %43

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @StrLen(i8* %20)
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i8* @Malloc(i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @Copy(i8* %26, i8* %27, i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @Safe64ToBase64(i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @B64_Decode(i8* %36, i8* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @Free(i8* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %22, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @Copy(i8*, i8*, i32) #1

declare dso_local i32 @Safe64ToBase64(i8*) #1

declare dso_local i32 @B64_Decode(i8*, i8*, i32) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
