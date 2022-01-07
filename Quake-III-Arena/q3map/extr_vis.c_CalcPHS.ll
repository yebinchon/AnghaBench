; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_CalcPHS.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_vis.c_CalcPHS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MAP_LEAFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Building PHS...\0A\00", align 1
@portalclusters = common dso_local global i32 0, align 4
@visBytes = common dso_local global i32* null, align 8
@leafbytes = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Bad bit in PVS\00", align 1
@leaflongs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Average clusters hearable: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcPHS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = load i32, i32* @MAX_MAP_LEAFS, align 4
  %14 = sdiv i32 %13, 8
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %127, %0
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @portalclusters, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %130

23:                                               ; preds = %19
  %24 = load i32*, i32** @visBytes, align 8
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @leafbytes, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @leafbytes, align 4
  %32 = call i32 @memcpy(i32* %17, i32* %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %100, %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @leafbytes, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %103

37:                                               ; preds = %33
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %100

46:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %96, %46
  %48 = load i32, i32* %3, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %99

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %3, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %96

57:                                               ; preds = %50
  %58 = load i32, i32* %2, align 4
  %59 = shl i32 %58, 3
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @portalclusters, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %57
  %68 = load i32*, i32** @visBytes, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @leafbytes, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = bitcast i32* %73 to i64*
  store i64* %74, i64** %8, align 8
  %75 = bitcast i32* %17 to i64*
  store i64* %75, i64** %7, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %92, %67
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @leaflongs, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i64*, i64** %8, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = bitcast i32* %17 to i64*
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %85
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %80
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %76

95:                                               ; preds = %76
  br label %96

96:                                               ; preds = %95, %56
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %47

99:                                               ; preds = %47
  br label %100

100:                                              ; preds = %99, %45
  %101 = load i32, i32* %2, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %2, align 4
  br label %33

103:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %123, %103
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* @portalclusters, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %104
  %109 = load i32, i32* %2, align 4
  %110 = ashr i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %17, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %2, align 4
  %115 = and i32 %114, 7
  %116 = shl i32 1, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %108
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %119, %108
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %2, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %2, align 4
  br label %104

126:                                              ; preds = %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %1, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %1, align 4
  br label %19

130:                                              ; preds = %19
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @portalclusters, align 4
  %133 = sdiv i32 %131, %132
  %134 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %135)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_printf(i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @Error(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
