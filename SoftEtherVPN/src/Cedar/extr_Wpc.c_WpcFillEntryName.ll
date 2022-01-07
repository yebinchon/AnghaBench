; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcFillEntryName.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcFillEntryName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SIZE = common dso_local global i32 0, align 4
@WPC_DATA_ENTRY_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WpcFillEntryName(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MAX_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %2
  store i32 1, i32* %9, align 4
  br label %50

20:                                               ; preds = %16
  %21 = trunc i64 %11 to i32
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @StrCpy(i8* %13, i32 %21, i8* %22)
  %24 = call i32 @StrUpper(i8* %13)
  %25 = call i64 @StrLen(i8* %13)
  store i64 %25, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %26

26:                                               ; preds = %34, %20
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @WPC_DATA_ENTRY_SIZE, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 32, i8* %33, align 1
  br label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %26

37:                                               ; preds = %26
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @WPC_DATA_ENTRY_SIZE, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @Copy(i8* %42, i8* %13, i64 %43)
  br label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* @WPC_DATA_ENTRY_SIZE, align 8
  %48 = call i32 @Copy(i8* %46, i8* %13, i64 %47)
  br label %49

49:                                               ; preds = %45, %41
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %9, align 4
  switch i32 %52, label %54 [
    i32 0, label %53
    i32 1, label %53
  ]

53:                                               ; preds = %50, %50
  ret void

54:                                               ; preds = %50
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @StrUpper(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local i32 @Copy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
