; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_GetRealnameCandidate.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Console.c_GetRealnameCandidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @GetRealnameCandidate(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = icmp eq %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = call %struct.TYPE_6__* (...) @NullToken()
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %3, align 8
  br label %93

19:                                               ; preds = %14
  %20 = call i32* @NewListFast(i32* null)
  store i32* %20, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %43, %19
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @StrCmpi(i8* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @Insert(i32* %39, i8* %40)
  store i32 1, i32* %9, align 4
  br label %46

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  br label %21

46:                                               ; preds = %38, %21
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i64 @IsOmissionName(i8* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %56
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i64 @IsNameInRealName(i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %56
  %73 = load i32*, i32** %7, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 @Insert(i32* %73, i8* %74)
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %50

80:                                               ; preds = %50
  br label %81

81:                                               ; preds = %80, %46
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32*, i32** %7, align 8
  %86 = call %struct.TYPE_6__* @ListToTokenList(i32* %85)
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %6, align 8
  br label %89

87:                                               ; preds = %81
  %88 = call %struct.TYPE_6__* (...) @NullToken()
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %6, align 8
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ReleaseList(i32* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %3, align 8
  br label %93

93:                                               ; preds = %89, %17
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %94
}

declare dso_local %struct.TYPE_6__* @NullToken(...) #1

declare dso_local i32* @NewListFast(i32*) #1

declare dso_local i64 @StrCmpi(i8*, i8*) #1

declare dso_local i32 @Insert(i32*, i8*) #1

declare dso_local i64 @IsOmissionName(i8*, i8*) #1

declare dso_local i64 @IsNameInRealName(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @ListToTokenList(i32*) #1

declare dso_local i32 @ReleaseList(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
