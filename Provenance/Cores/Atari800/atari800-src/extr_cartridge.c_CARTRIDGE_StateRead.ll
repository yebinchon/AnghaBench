; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_StateRead.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_CARTRIDGE_StateRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@CARTRIDGE_NONE = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@CARTRIDGE_main = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CARTRIDGE_piggyback = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@active_cart = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARTRIDGE_StateRead(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @CARTRIDGE_NONE, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @FILENAME_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = call i32 @StateSav_ReadINT(i32* %3, i32 1)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CARTRIDGE_NONE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = call i32 @StateSav_ReadFNAME(i8* %12)
  %19 = getelementptr inbounds i8, i8* %12, i64 0
  %20 = load i8, i8* %19, align 16
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = call i64 @CARTRIDGE_Insert(i8* %12)
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %2, align 4
  %30 = icmp sge i32 %29, 7
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @StateSav_ReadINT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), i32 1)
  br label %33

33:                                               ; preds = %31, %28
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  %42 = call i32 @StateSav_ReadINT(i32* %3, i32 1)
  %43 = call i32 @StateSav_ReadFNAME(i8* %12)
  %44 = getelementptr inbounds i8, i8* %12, i64 0
  %45 = load i8, i8* %44, align 16
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = call i64 @CARTRIDGE_Insert_Second(i8* %12)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 0), align 4
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %39
  %54 = load i32, i32* %2, align 4
  %55 = icmp sge i32 %54, 7
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @StateSav_ReadINT(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_piggyback, i32 0, i32 1), i32 1)
  br label %65

58:                                               ; preds = %53
  %59 = call i32 @StateSav_ReadINT(i32* %6, i32 1)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store %struct.TYPE_4__* @CARTRIDGE_piggyback, %struct.TYPE_4__** @active_cart, align 8
  br label %64

63:                                               ; preds = %58
  store %struct.TYPE_4__* @CARTRIDGE_main, %struct.TYPE_4__** @active_cart, align 8
  br label %64

64:                                               ; preds = %63, %62
  store i32 1, i32* %7, align 4
  br label %78

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %36
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 0), align 4
  %68 = call i64 @CartIsPassthrough(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CARTRIDGE_main, i32 0, i32 1), align 4
  %72 = and i32 %71, 12
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store %struct.TYPE_4__* @CARTRIDGE_piggyback, %struct.TYPE_4__** @active_cart, align 8
  br label %76

75:                                               ; preds = %70, %66
  store %struct.TYPE_4__* @CARTRIDGE_main, %struct.TYPE_4__** @active_cart, align 8
  br label %76

76:                                               ; preds = %75, %74
  %77 = call i32 (...) @MapActiveCart()
  store i32 0, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %64
  %79 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StateSav_ReadINT(i32*, i32) #2

declare dso_local i32 @StateSav_ReadFNAME(i8*) #2

declare dso_local i64 @CARTRIDGE_Insert(i8*) #2

declare dso_local i64 @CARTRIDGE_Insert_Second(i8*) #2

declare dso_local i64 @CartIsPassthrough(i32) #2

declare dso_local i32 @MapActiveCart(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
