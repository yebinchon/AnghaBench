; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_loadGraphics.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_loadGraphics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"STTNUM%d\00", align 1
@PU_STATIC = common dso_local global i32 0, align 4
@tallnum = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"STYSNUM%d\00", align 1
@shortnum = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"STTPRCNT\00", align 1
@tallpercent = common dso_local global i32* null, align 8
@NUMCARDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"STKEYS%d\00", align 1
@keys = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"STARMS\00", align 1
@armsbg = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"STGNUM%d\00", align 1
@arms = common dso_local global i32*** null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"STFB%d\00", align 1
@consoleplayer = common dso_local global i32 0, align 4
@faceback = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"STBAR\00", align 1
@sbar = common dso_local global i32* null, align 8
@ST_NUMPAINFACES = common dso_local global i32 0, align 4
@ST_NUMSTRAIGHTFACES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"STFST%d%d\00", align 1
@faces = common dso_local global i64* null, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"STFTR%d0\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"STFTL%d0\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"STFOUCH%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"STFEVL%d\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"STFKILL%d\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"STFGOD0\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"STFDEAD0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_loadGraphics() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [9 x i8], align 1
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %31, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %34

8:                                                ; preds = %5
  %9 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %13 = load i32, i32* @PU_STATIC, align 4
  %14 = call i64 @W_CacheLumpName(i8* %12, i32 %13)
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32**, i32*** @tallnum, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  store i32* %15, i32** %19, align 8
  %20 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %21 = load i32, i32* %1, align 4
  %22 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %24 = load i32, i32* @PU_STATIC, align 4
  %25 = call i64 @W_CacheLumpName(i8* %23, i32 %24)
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32**, i32*** @shortnum, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* %26, i32** %30, align 8
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %5

34:                                               ; preds = %5
  %35 = load i32, i32* @PU_STATIC, align 4
  %36 = call i64 @W_CacheLumpName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** @tallpercent, align 8
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %54, %34
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @NUMCARDS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %47 = load i32, i32* @PU_STATIC, align 4
  %48 = call i64 @W_CacheLumpName(i8* %46, i32 %47)
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32**, i32*** @keys, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* %49, i32** %53, align 8
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %38

57:                                               ; preds = %38
  %58 = load i32, i32* @PU_STATIC, align 4
  %59 = call i64 @W_CacheLumpName(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** @armsbg, align 8
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %91, %57
  %62 = load i32, i32* %1, align 4
  %63 = icmp slt i32 %62, 6
  br i1 %63, label %64, label %94

64:                                               ; preds = %61
  %65 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %66 = load i32, i32* %1, align 4
  %67 = add nsw i32 %66, 2
  %68 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %70 = load i32, i32* @PU_STATIC, align 4
  %71 = call i64 @W_CacheLumpName(i8* %69, i32 %70)
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32***, i32**** @arms, align 8
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32**, i32*** %73, i64 %75
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 0
  store i32* %72, i32** %78, align 8
  %79 = load i32**, i32*** @shortnum, align 8
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %79, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = load i32***, i32**** @arms, align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32**, i32*** %85, i64 %87
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  store i32* %84, i32** %90, align 8
  br label %91

91:                                               ; preds = %64
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %61

94:                                               ; preds = %61
  %95 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %96 = load i32, i32* @consoleplayer, align 4
  %97 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %99 = load i32, i32* @PU_STATIC, align 4
  %100 = call i64 @W_CacheLumpName(i8* %98, i32 %99)
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** @faceback, align 8
  %102 = load i32, i32* @PU_STATIC, align 4
  %103 = call i64 @W_CacheLumpName(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = inttoptr i64 %103 to i32*
  store i32* %104, i32** @sbar, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %105

105:                                              ; preds = %186, %94
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @ST_NUMPAINFACES, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %189

109:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @ST_NUMSTRAIGHTFACES, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %110
  %115 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %116, i32 %117)
  %119 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %120 = load i32, i32* @PU_STATIC, align 4
  %121 = call i64 @W_CacheLumpName(i8* %119, i32 %120)
  %122 = load i64*, i64** @faces, align 8
  %123 = load i32, i32* %3, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %3, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  store i64 %121, i64* %126, align 8
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %2, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %2, align 4
  br label %110

130:                                              ; preds = %110
  %131 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %132 = load i32, i32* %1, align 4
  %133 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  %134 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %135 = load i32, i32* @PU_STATIC, align 4
  %136 = call i64 @W_CacheLumpName(i8* %134, i32 %135)
  %137 = load i64*, i64** @faces, align 8
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %3, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  store i64 %136, i64* %141, align 8
  %142 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %143 = load i32, i32* %1, align 4
  %144 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %143)
  %145 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %146 = load i32, i32* @PU_STATIC, align 4
  %147 = call i64 @W_CacheLumpName(i8* %145, i32 %146)
  %148 = load i64*, i64** @faces, align 8
  %149 = load i32, i32* %3, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %3, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i64, i64* %148, i64 %151
  store i64 %147, i64* %152, align 8
  %153 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %154 = load i32, i32* %1, align 4
  %155 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %154)
  %156 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %157 = load i32, i32* @PU_STATIC, align 4
  %158 = call i64 @W_CacheLumpName(i8* %156, i32 %157)
  %159 = load i64*, i64** @faces, align 8
  %160 = load i32, i32* %3, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %3, align 4
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  store i64 %158, i64* %163, align 8
  %164 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %165 = load i32, i32* %1, align 4
  %166 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %165)
  %167 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %168 = load i32, i32* @PU_STATIC, align 4
  %169 = call i64 @W_CacheLumpName(i8* %167, i32 %168)
  %170 = load i64*, i64** @faces, align 8
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %3, align 4
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 %169, i64* %174, align 8
  %175 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %176 = load i32, i32* %1, align 4
  %177 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  %178 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %179 = load i32, i32* @PU_STATIC, align 4
  %180 = call i64 @W_CacheLumpName(i8* %178, i32 %179)
  %181 = load i64*, i64** @faces, align 8
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %3, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i64, i64* %181, i64 %184
  store i64 %180, i64* %185, align 8
  br label %186

186:                                              ; preds = %130
  %187 = load i32, i32* %1, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %1, align 4
  br label %105

189:                                              ; preds = %105
  %190 = load i32, i32* @PU_STATIC, align 4
  %191 = call i64 @W_CacheLumpName(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %190)
  %192 = load i64*, i64** @faces, align 8
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %3, align 4
  %195 = sext i32 %193 to i64
  %196 = getelementptr inbounds i64, i64* %192, i64 %195
  store i64 %191, i64* %196, align 8
  %197 = load i32, i32* @PU_STATIC, align 4
  %198 = call i64 @W_CacheLumpName(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %197)
  %199 = load i64*, i64** @faces, align 8
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %3, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i64, i64* %199, i64 %202
  store i64 %198, i64* %203, align 8
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i64 @W_CacheLumpName(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
