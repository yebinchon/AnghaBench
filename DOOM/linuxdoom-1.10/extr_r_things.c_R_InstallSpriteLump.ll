; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_InstallSpriteLump.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_InstallSpriteLump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i8** }

@.str = private unnamed_addr constant [53 x i8] c"R_InstallSpriteLump: Bad frame characters in lump %i\00", align 1
@maxframe = common dso_local global i32 0, align 4
@sprtemp = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"R_InitSprites: Sprite %s frame %c has multip rot=0 lump\00", align 1
@spritename = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"R_InitSprites: Sprite %s frame %c has rotations and a rot=0 lump\00", align 1
@firstspritelump = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"R_InitSprites: Sprite %s : %c : %c has two lumps mapped to it\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InstallSpriteLump(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp uge i32 %10, 29
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ugt i32 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (i8*, i32, ...) @I_Error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @maxframe, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @maxframe, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %24
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @spritename, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add i32 65, %37
  %39 = call i32 (i8*, i32, ...) @I_Error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* @spritename, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add i32 65, %50
  %52 = call i32 (i8*, i32, ...) @I_Error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %55 = load i32, i32* %6, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %86, %53
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @firstspritelump, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %65, i32* %74, align 4
  %75 = load i64, i64* %8, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %76, i8** %85, align 8
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %59

89:                                               ; preds = %59
  br label %153

90:                                               ; preds = %24
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %90
  %99 = load i32, i32* @spritename, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add i32 65, %100
  %102 = call i32 (i8*, i32, ...) @I_Error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %98, %90
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = add i32 %109, -1
  store i32 %110, i32* %7, align 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %129

122:                                              ; preds = %103
  %123 = load i32, i32* @spritename, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add i32 65, %124
  %126 = load i32, i32* %7, align 4
  %127 = add i32 49, %126
  %128 = call i32 (i8*, i32, ...) @I_Error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %123, i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %122, %103
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @firstspritelump, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %134 = load i32, i32* %6, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %132, i32* %141, align 4
  %142 = load i64, i64* %8, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sprtemp, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i8**, i8*** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  store i8* %143, i8** %152, align 8
  br label %153

153:                                              ; preds = %129, %89
  ret void
}

declare dso_local i32 @I_Error(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
