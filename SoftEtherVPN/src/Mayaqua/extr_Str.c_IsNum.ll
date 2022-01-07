; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_IsNum.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_IsNum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsNum(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* @MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

20:                                               ; preds = %1
  %21 = trunc i64 %14 to i32
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @StrCpy(i8* %16, i32 %21, i8* %22)
  %24 = call i32 @Trim(i8* %16)
  %25 = call i64 @StrLen(i8* %16)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

28:                                               ; preds = %20
  %29 = call %struct.TYPE_4__* @ParseToken(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %10, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = trunc i64 %14 to i32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @StrCpy(i8* %16, i32 %35, i8* %40)
  br label %42

42:                                               ; preds = %34, %28
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = call i32 @FreeToken(%struct.TYPE_4__* %43)
  %45 = call i64 @StrLen(i8* %16)
  store i64 %45, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %46

46:                                               ; preds = %79, %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i8, i8* %16, i64 %51
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %4, align 1
  %54 = load i8, i8* %4, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 48, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sle i32 %59, 57
  br i1 %60, label %73, label %61

61:                                               ; preds = %57, %50
  %62 = load i8, i8* %4, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 43
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i8, i8* %4, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 45
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i8, i8* %4, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 44
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %65, %61, %57
  store i32 1, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %46

82:                                               ; preds = %46
  store i64 0, i64* %5, align 8
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i64, i64* %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds i8, i8* %16, i64 %88
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %4, align 1
  %91 = load i8, i8* %4, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 45
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %94, %87
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %5, align 8
  br label %83

101:                                              ; preds = %83
  %102 = load i64, i64* %7, align 8
  %103 = icmp uge i64 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

105:                                              ; preds = %101
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %106

106:                                              ; preds = %105, %104, %77, %27, %19
  %107 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local i32 @Trim(i8*) #2

declare dso_local i64 @StrLen(i8*) #2

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #2

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
