; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_FONT_writeCenter.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/gui/extr_font.c_FONT_writeCenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@font_size = common dso_local global i32* null, align 8
@fheight = common dso_local global i32 0, align 4
@vmode = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FONT_writeCenter(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %35, %6
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %14, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 10
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ false, %17 ], [ %32, %25 ]
  br i1 %34, label %35, label %52

35:                                               ; preds = %33
  %36 = load i32*, i32** @font_size, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i64
  %44 = getelementptr inbounds i32, i32* %36, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* @fheight, align 4
  %49 = sdiv i32 %47, %48
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %15, align 4
  br label %17

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* %15, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %68, %71
  %73 = sdiv i32 %72, 2
  %74 = add nsw i32 %63, %73
  store i32 %74, i32* %16, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 2
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 2
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %118, %62
  %88 = load i8*, i8** %8, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 10
  br label %97

97:                                               ; preds = %92, %87
  %98 = phi i1 [ false, %87 ], [ %96, %92 ]
  br i1 %98, label %99, label %131

99:                                               ; preds = %97
  %100 = load i32*, i32** @font_size, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* @fheight, align 4
  %109 = sdiv i32 %107, %108
  store i32 %109, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %11, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %99
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @strlen(i8* %116)
  store i32 %117, i32* %7, align 4
  br label %159

118:                                              ; preds = %99
  %119 = load i8*, i8** %8, align 8
  %120 = load i8, i8* %119, align 1
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @DrawChar(i8 signext %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %16, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  br label %87

131:                                              ; preds = %97
  %132 = load i8*, i8** %8, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 10
  br i1 %135, label %136, label %158

136:                                              ; preds = %131
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %145, 2
  %147 = add nsw i32 %142, %146
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %148, %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmode, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sdiv i32 %153, 2
  %155 = add nsw i32 %150, %154
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @FONT_writeCenter(i8* %139, i32 %140, i32 %141, i32 %147, i32 %155, i32 %156)
  store i32 %157, i32* %7, align 4
  br label %159

158:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %136, %115
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DrawChar(i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
