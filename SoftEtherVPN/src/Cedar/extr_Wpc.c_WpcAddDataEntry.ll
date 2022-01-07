; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcAddDataEntry.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Wpc.c_WpcAddDataEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPC_DATA_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%010u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WpcAddDataEntry(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [11 x i8], align 1
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @WPC_DATA_ENTRY_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %19, %4
  store i32 1, i32* %12, align 4
  br label %45

29:                                               ; preds = %25, %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @WpcFillEntryName(i8* %16, i8* %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @WPC_DATA_ENTRY_SIZE, align 4
  %34 = call i32 @WriteBuf(i32* %32, i8* %16, i32 %33)
  %35 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @Format(i8* %35, i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds [11 x i8], [11 x i8]* %11, i64 0, i64 0
  %40 = call i32 @WriteBuf(i32* %38, i8* %39, i32 10)
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @WriteBuf(i32* %41, i8* %42, i32 %43)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %29, %28
  %46 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %49 [
    i32 0, label %48
    i32 1, label %48
  ]

48:                                               ; preds = %45, %45
  ret void

49:                                               ; preds = %45
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WpcFillEntryName(i8*, i8*) #2

declare dso_local i32 @WriteBuf(i32*, i8*, i32) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
