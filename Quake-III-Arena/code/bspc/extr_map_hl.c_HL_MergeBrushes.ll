; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_MergeBrushes.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_map_hl.c_HL_MergeBrushes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [19 x i8] c"%5d brushes merged\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D%5d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @HL_MergeBrushes(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %146

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  %21 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %22

22:                                               ; preds = %20, %17
  br label %23

23:                                               ; preds = %136, %22
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %10, align 8
  br label %25

25:                                               ; preds = %35, %23
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = icmp ne %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %39

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %10, align 8
  br label %25

39:                                               ; preds = %33, %25
  store i32 0, i32* %7, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %8, align 8
  br label %41

41:                                               ; preds = %132, %39
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %134

44:                                               ; preds = %41
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %13, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %9, align 8
  br label %49

49:                                               ; preds = %116, %44
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %120

52:                                               ; preds = %49
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = call %struct.TYPE_8__* @TryMergeBrushes(%struct.TYPE_8__* %62, %struct.TYPE_8__* %63)
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %11, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = icmp ne %struct.TYPE_8__* %66, null
  br i1 %67, label %68, label %114

68:                                               ; preds = %65
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %4, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = call i32 @FreeBrush(%struct.TYPE_8__* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %88 = call i32 @FreeBrush(%struct.TYPE_8__* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %10, align 8
  br label %90

90:                                               ; preds = %100, %68
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = icmp ne %struct.TYPE_8__* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  br label %104

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %10, align 8
  br label %90

104:                                              ; preds = %98, %90
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %113

113:                                              ; preds = %109, %104
  br label %120

114:                                              ; preds = %65
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %13, align 8
  br label %116

116:                                              ; preds = %114
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  store %struct.TYPE_8__* %119, %struct.TYPE_8__** %9, align 8
  br label %49

120:                                              ; preds = %113, %49
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %122 = icmp ne %struct.TYPE_8__* %121, null
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %4, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %12, align 8
  br label %131

131:                                              ; preds = %123, %120
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %133, %struct.TYPE_8__** %8, align 8
  br label %41

134:                                              ; preds = %41
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %4, align 8
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %23, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %139
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %3, align 8
  br label %146

146:                                              ; preds = %144, %16
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %147
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @TryMergeBrushes(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
