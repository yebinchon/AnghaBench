; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_EditPolicy.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_EditPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32*)* }
%struct.TYPE_13__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }

@MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"policy:%s\00", align 1
@VALUE_INT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"CMD_CascadePolicySet_Invalid_Name\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"CMD_CascadePolicySet_Invalid_Name_For_Cascade\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"CMD_CascadePolicySet_Invalid_Range\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EditPolicy(%struct.TYPE_14__* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [128 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* @MAX_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @MAX_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %18, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = icmp eq %struct.TYPE_14__* %30, null
  br i1 %31, label %41, label %32

32:                                               ; preds = %5
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %32, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %192

42:                                               ; preds = %38
  %43 = call i32* (...) @NewPack()
  store i32* %43, i32** %12, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @OutRpcPolicy(i32* %44, i32* %45)
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @PolicyStrToId(i8* %48)
  %50 = call i32 @PolicyIdToStr(i64 %49)
  %51 = call i32 @Format(i8* %47, i32 128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %54 = load i32, i32* @VALUE_INT, align 4
  %55 = call %struct.TYPE_13__* @GetElement(i32* %52, i8* %53, i32 %54)
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %13, align 8
  %56 = icmp eq %struct.TYPE_13__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %42
  %58 = load i8*, i8** %9, align 8
  %59 = call i64 @PolicyStrToId(i8* %58)
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* @INFINITE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %57, %42
  %63 = mul nuw i64 4, %24
  %64 = trunc i64 %63 to i32
  %65 = call i32 @_UU(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 (i32*, i32, i32, i8*, ...) @UniFormat(i32* %26, i32 %64, i32 %65, i8* %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %69, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = call i32 %70(%struct.TYPE_14__* %71, i32* %26)
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @FreePack(i32* %73)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %192

75:                                               ; preds = %57
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @PolicyIsSupportedForCascade(i64 %79)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = mul nuw i64 4, %24
  %84 = trunc i64 %83 to i32
  %85 = call i32 @_UU(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 (i32*, i32, i32, i8*, ...) @UniFormat(i32* %26, i32 %84, i32 %85, i8* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %89, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %92 = call i32 %90(%struct.TYPE_14__* %91, i32* %26)
  %93 = load i32*, i32** %12, align 8
  %94 = call i32 @FreePack(i32* %93)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %192

95:                                               ; preds = %78, %75
  %96 = load i64, i64* %15, align 8
  %97 = call %struct.TYPE_12__* @GetPolicyItem(i64 %96)
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %14, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @StartWith(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  %107 = load i8*, i8** %10, align 8
  %108 = call i64 @StartWith(i8* %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %10, align 8
  %112 = call i64 @ToInt(i8* %111)
  %113 = icmp ne i64 %112, 0
  br label %114

114:                                              ; preds = %110, %106, %102
  %115 = phi i1 [ true, %106 ], [ true, %102 ], [ %113, %110 ]
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %120, i64 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 %117, i32* %123, align 4
  br label %184

124:                                              ; preds = %95
  %125 = load i8*, i8** %10, align 8
  %126 = call i64 @ToInt(i8* %125)
  store i64 %126, i64* %21, align 8
  store i32 1, i32* %22, align 4
  %127 = mul nuw i64 4, %24
  %128 = trunc i64 %127 to i32
  %129 = load i64, i64* %15, align 8
  %130 = call i32 @GetPolicyValueRangeStr(i32* %26, i32 %128, i64 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load i64, i64* %21, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, i32* %22, align 4
  br label %139

139:                                              ; preds = %138, %135
  br label %140

140:                                              ; preds = %139, %124
  %141 = load i64, i64* %21, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = load i64, i64* %21, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load i64, i64* %21, align 8
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149, %143
  store i32 0, i32* %22, align 4
  br label %156

156:                                              ; preds = %155, %149, %140
  %157 = load i32, i32* %22, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = mul nuw i64 4, %28
  %161 = trunc i64 %160 to i32
  %162 = call i32 @_UU(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @PolicyIdToStr(i64 %163)
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 (i32*, i32, i32, i8*, ...) @UniFormat(i32* %29, i32 %161, i32 %162, i8* %166, i32* %26)
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = load i32 (%struct.TYPE_14__*, i32*)*, i32 (%struct.TYPE_14__*, i32*)** %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %172 = call i32 %170(%struct.TYPE_14__* %171, i32* %29)
  %173 = load i32*, i32** %12, align 8
  %174 = call i32 @FreePack(i32* %173)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %192

175:                                              ; preds = %156
  %176 = load i64, i64* %21, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %180, i64 0
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  store i32 %177, i32* %183, align 4
  br label %184

184:                                              ; preds = %175, %114
  %185 = load i32*, i32** %8, align 8
  %186 = call i32 @Zero(i32* %185, i32 4)
  %187 = load i32*, i32** %8, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = call i32 @InRpcPolicy(i32* %187, i32* %188)
  %190 = load i32*, i32** %12, align 8
  %191 = call i32 @FreePack(i32* %190)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %192

192:                                              ; preds = %184, %159, %82, %62, %41
  %193 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @NewPack(...) #2

declare dso_local i32 @OutRpcPolicy(i32*, i32*) #2

declare dso_local i32 @Format(i8*, i32, i8*, i32) #2

declare dso_local i32 @PolicyIdToStr(i64) #2

declare dso_local i64 @PolicyStrToId(i8*) #2

declare dso_local %struct.TYPE_13__* @GetElement(i32*, i8*, i32) #2

declare dso_local i32 @UniFormat(i32*, i32, i32, i8*, ...) #2

declare dso_local i32 @_UU(i8*) #2

declare dso_local i32 @FreePack(i32*) #2

declare dso_local i32 @PolicyIsSupportedForCascade(i64) #2

declare dso_local %struct.TYPE_12__* @GetPolicyItem(i64) #2

declare dso_local i64 @StartWith(i8*, i8*) #2

declare dso_local i64 @ToInt(i8*) #2

declare dso_local i32 @GetPolicyValueRangeStr(i32*, i32, i64) #2

declare dso_local i32 @Zero(i32*, i32) #2

declare dso_local i32 @InRpcPolicy(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
