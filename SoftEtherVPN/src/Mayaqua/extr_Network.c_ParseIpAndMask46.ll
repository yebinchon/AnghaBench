; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ParseIpAndMask46.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ParseIpAndMask46.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseIpAndMask46(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %17, %3
  store i32 0, i32* %4, align 4
  br label %117

24:                                               ; preds = %20
  %25 = call i32 @Zero(i32* %12, i32 4)
  %26 = call i32 @Zero(i32* %13, i32 4)
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.TYPE_4__* @ParseToken(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = call i32 @FreeToken(%struct.TYPE_4__* %34)
  store i32 0, i32* %4, align 4
  br label %117

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %9, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @Trim(i8* %47)
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @Trim(i8* %49)
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @StrToIP(i32* %12, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %36
  %55 = load i8*, i8** %10, align 8
  %56 = call i64 @StrToIP(i32* %13, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = call i64 @IsIP6(i32* %12)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = call i64 @IsIP6(i32* %13)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  store i32 1, i32* %11, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @Copy(i32* %65, i32* %12, i32 4)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @Copy(i32* %67, i32* %13, i32 4)
  br label %81

69:                                               ; preds = %61, %58
  %70 = call i64 @IsIP4(i32* %12)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = call i64 @IsIP4(i32* %13)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @Copy(i32* %76, i32* %12, i32 4)
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @Copy(i32* %78, i32* %13, i32 4)
  br label %80

80:                                               ; preds = %75, %72, %69
  br label %81

81:                                               ; preds = %80, %64
  br label %112

82:                                               ; preds = %54
  %83 = load i8*, i8** %10, align 8
  %84 = call i64 @IsNum(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @ToInt(i8* %87)
  store i32 %88, i32* %14, align 4
  %89 = call i64 @IsIP6(i32* %12)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32, i32* %14, align 4
  %93 = icmp sle i32 %92, 128
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  store i32 1, i32* %11, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @Copy(i32* %95, i32* %12, i32 4)
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @IntToSubnetMask6(i32* %97, i32 %98)
  br label %110

100:                                              ; preds = %91, %86
  %101 = load i32, i32* %14, align 4
  %102 = icmp sle i32 %101, 32
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  store i32 1, i32* %11, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @Copy(i32* %104, i32* %12, i32 4)
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @IntToSubnetMask4(i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %103, %100
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112, %36
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %115 = call i32 @FreeToken(%struct.TYPE_4__* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %33, %23
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @Zero(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

declare dso_local i32 @Trim(i8*) #1

declare dso_local i64 @StrToIP(i32*, i8*) #1

declare dso_local i64 @IsIP6(i32*) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i64 @IsIP4(i32*) #1

declare dso_local i64 @IsNum(i8*) #1

declare dso_local i32 @ToInt(i8*) #1

declare dso_local i32 @IntToSubnetMask6(i32*, i32) #1

declare dso_local i32 @IntToSubnetMask4(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
