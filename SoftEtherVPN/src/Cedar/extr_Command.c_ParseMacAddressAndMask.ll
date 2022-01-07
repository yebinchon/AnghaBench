; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_ParseMacAddressAndMask.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_ParseMacAddressAndMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseMacAddressAndMask(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [6 x i32], align 16
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %95

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %15, align 4
  br label %29

29:                                               ; preds = %28, %25, %22, %19
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @IsEmptyStr(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32*, i32** %7, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @Zero(i32* %38, i32 6)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @Zero(i32* %40, i32 6)
  br label %42

42:                                               ; preds = %36, %33
  store i32 1, i32* %5, align 4
  br label %95

43:                                               ; preds = %29
  %44 = load i8*, i8** %6, align 8
  %45 = call %struct.TYPE_4__* @ParseToken(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %10, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = call i32 @FreeToken(%struct.TYPE_4__* %51)
  store i32 0, i32* %5, align 4
  br label %95

53:                                               ; preds = %43
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @Trim(i8* %64)
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @Trim(i8* %66)
  %68 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @StrToMac(i32* %68, i8* %69)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %53
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @StrToMac(i32* %73, i8* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %53
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = call i32 @FreeToken(%struct.TYPE_4__* %78)
  store i32 0, i32* %5, align 4
  br label %95

80:                                               ; preds = %72
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %86 = call i32 @Copy(i32* %84, i32* %85, i32 6)
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %89 = call i32 @Copy(i32* %87, i32* %88, i32 6)
  %90 = load i32*, i32** %7, align 8
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %83, %80
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %94 = call i32 @FreeToken(%struct.TYPE_4__* %93)
  store i32 1, i32* %5, align 4
  br label %95

95:                                               ; preds = %92, %77, %50, %42, %18
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i32 @StrToMac(i32*, i8*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
