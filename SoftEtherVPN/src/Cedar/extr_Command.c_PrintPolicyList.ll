; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PrintPolicyList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PrintPolicyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*, i8*)* }
%struct.TYPE_21__ = type { i32 }

@INFINITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"CMD_PolicyList_Invalid_Name\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"POL_%u\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"POL_EX_%u\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CMD_PolicyList_Help_1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i32] [i32 32, i32 37, i32 115, i32 0], align 4
@.str.5 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"CMD_PolicyList_Help_2\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"CMD_PolicyList_Help_3\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"CMD_PolicyList_Help_4\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"CMD_PolicyList_Help_5\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"CMD_PolicyList_Column_1\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"CMD_PolicyList_Column_2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintPolicyList(%struct.TYPE_22__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca [64 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = icmp eq %struct.TYPE_22__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %202

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @IsEmptyStr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i8*, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %169

29:                                               ; preds = %26
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @PolicyStrToId(i8* %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @INFINITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %37, align 8
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %40 = call i8* @_UU(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 %38(%struct.TYPE_22__* %39, i8* %40)
  br label %168

42:                                               ; preds = %29
  %43 = load i32, i32* @MAX_SIZE, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %6, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %7, align 8
  %47 = load i32, i32* @MAX_SIZE, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %8, align 8
  %50 = load i32, i32* @MAX_SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %13, align 8
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @Format(i8* %53, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @Format(i8* %56, i32 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %60 = call i8* @_UU(i8* %59)
  store i8* %60, i8** %11, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %62 = call i8* @_UU(i8* %61)
  store i8* %62, i8** %12, align 8
  %63 = trunc i64 %51 to i32
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @PolicyIdToStr(i64 %64)
  %66 = call i32 @StrToUni(i8* %52, i32 %63, i32 %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %68, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %72 = call i32 %69(%struct.TYPE_22__* %70, i8* %71)
  %73 = trunc i64 %48 to i32
  %74 = call i32 @UniFormat(i8* %49, i32 %73, i8* bitcast ([4 x i32]* @.str.4 to i8*), i8* %52)
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %79 = call i32 %77(%struct.TYPE_22__* %78, i8* %49)
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %81, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %84 = call i32 %82(%struct.TYPE_22__* %83, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %86, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %89 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %90 = call i32 %87(%struct.TYPE_22__* %88, i8* %89)
  %91 = trunc i64 %48 to i32
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @UniFormat(i8* %49, i32 %91, i8* bitcast ([4 x i32]* @.str.4 to i8*), i8* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %98 = call i32 %96(%struct.TYPE_22__* %97, i8* %49)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %100, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %103 = call i32 %101(%struct.TYPE_22__* %102, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %104 = trunc i64 %44 to i32
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @GetPolicyValueRangeStr(i8* %46, i32 %104, i64 %105)
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %108, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %111 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %112 = call i32 %109(%struct.TYPE_22__* %110, i8* %111)
  %113 = trunc i64 %48 to i32
  %114 = call i32 @UniFormat(i8* %49, i32 %113, i8* bitcast ([4 x i32]* @.str.4 to i8*), i8* %46)
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %116, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %119 = call i32 %117(%struct.TYPE_22__* %118, i8* %49)
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %121, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = call i32 %122(%struct.TYPE_22__* %123, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %125 = trunc i64 %44 to i32
  %126 = load i64, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call %struct.TYPE_21__* @GetPolicyItem(i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @FormatPolicyValue(i8* %46, i32 %125, i64 %126, i32 %130)
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %133, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %136 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %137 = call i32 %134(%struct.TYPE_22__* %135, i8* %136)
  %138 = trunc i64 %48 to i32
  %139 = call i32 @UniFormat(i8* %49, i32 %138, i8* bitcast ([4 x i32]* @.str.4 to i8*), i8* %46)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %141, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %144 = call i32 %142(%struct.TYPE_22__* %143, i8* %49)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %146, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = call i32 %147(%struct.TYPE_22__* %148, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %151, align 8
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %154 = call i8* @_UU(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %155 = call i32 %152(%struct.TYPE_22__* %153, i8* %154)
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 %158(%struct.TYPE_22__* %159, i8* %160)
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_22__*, i8*)*, i32 (%struct.TYPE_22__*, i8*)** %163, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %166 = call i32 %164(%struct.TYPE_22__* %165, i8* bitcast ([1 x i32]* @.str.5 to i8*))
  %167 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %167)
  br label %168

168:                                              ; preds = %42, %35
  br label %202

169:                                              ; preds = %26
  %170 = call i32* (...) @CtNew()
  store i32* %170, i32** %15, align 8
  %171 = load i32*, i32** %15, align 8
  %172 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %173 = call i32 @CtInsertColumn(i32* %171, i8* %172, i32 0)
  %174 = load i32*, i32** %15, align 8
  %175 = call i8* @_UU(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %176 = call i32 @CtInsertColumn(i32* %174, i8* %175, i32 0)
  store i64 0, i64* %14, align 8
  br label %177

177:                                              ; preds = %195, %169
  %178 = load i64, i64* %14, align 8
  %179 = call i64 (...) @PolicyNum()
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %198

181:                                              ; preds = %177
  %182 = load i64, i64* %14, align 8
  %183 = call i32 @PolicyIdToStr(i64 %182)
  %184 = call i8* @CopyStrToUni(i32 %183)
  store i8* %184, i8** %17, align 8
  %185 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %186 = load i64, i64* %14, align 8
  %187 = call i32 @Format(i8* %185, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %186)
  %188 = load i32*, i32** %15, align 8
  %189 = load i8*, i8** %17, align 8
  %190 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %191 = call i8* @_UU(i8* %190)
  %192 = call i32 @CtInsert(i32* %188, i8* %189, i8* %191)
  %193 = load i8*, i8** %17, align 8
  %194 = call i32 @Free(i8* %193)
  br label %195

195:                                              ; preds = %181
  %196 = load i64, i64* %14, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %14, align 8
  br label %177

198:                                              ; preds = %177
  %199 = load i32*, i32** %15, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %201 = call i32 @CtFree(i32* %199, %struct.TYPE_22__* %200)
  br label %202

202:                                              ; preds = %20, %198, %168
  ret void
}

declare dso_local i64 @IsEmptyStr(i8*) #1

declare dso_local i64 @PolicyStrToId(i8*) #1

declare dso_local i8* @_UU(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Format(i8*, i32, i8*, i64) #1

declare dso_local i32 @StrToUni(i8*, i32, i32) #1

declare dso_local i32 @PolicyIdToStr(i64) #1

declare dso_local i32 @UniFormat(i8*, i32, i8*, i8*) #1

declare dso_local i32 @GetPolicyValueRangeStr(i8*, i32, i64) #1

declare dso_local i32 @FormatPolicyValue(i8*, i32, i64, i32) #1

declare dso_local %struct.TYPE_21__* @GetPolicyItem(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @CtNew(...) #1

declare dso_local i32 @CtInsertColumn(i32*, i8*, i32) #1

declare dso_local i64 @PolicyNum(...) #1

declare dso_local i8* @CopyStrToUni(i32) #1

declare dso_local i32 @CtInsert(i32*, i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @CtFree(i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
