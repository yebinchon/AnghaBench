; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsPrintGlobalConfig.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tglobalcfg.c_tsPrintGlobalConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"   taos config & system info:\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"==================================\00", align 1
@tsGlobalConfigNum = common dso_local global i32 0, align 4
@tsGlobalConfig = common dso_local global %struct.TYPE_3__* null, align 8
@tscEmbedded = common dso_local global i64 0, align 8
@TSDB_CFG_CTYPE_B_CLIENT = common dso_local global i32 0, align 4
@TSDB_CFG_CTYPE_B_NOT_PRINT = common dso_local global i32 0, align 4
@TSDB_CFG_CTYPE_B_LITE = common dso_local global i32 0, align 4
@TSDB_CFG_CTYPE_B_CLUSTER = common dso_local global i32 0, align 4
@TSDB_CFG_PRINT_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c" %s:%s%d%s\00", align 1
@tsGlobalUnit = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" %s:%s%f%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" %s:%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsPrintGlobalConfig() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %163, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @tsGlobalConfigNum, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %166

13:                                               ; preds = %9
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tsGlobalConfig, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %2, align 8
  %18 = load i64, i64* @tscEmbedded, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TSDB_CFG_CTYPE_B_CLIENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %163

28:                                               ; preds = %20, %13
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TSDB_CFG_CTYPE_B_NOT_PRINT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %163

36:                                               ; preds = %28
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TSDB_CFG_CTYPE_B_LITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %36
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TSDB_CFG_CTYPE_B_CLUSTER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %163

52:                                               ; preds = %44
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @strlen(i32 %55)
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @TSDB_CFG_PRINT_LEN, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi i32 [ 0, %63 ], [ %65, %64 ]
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @TSDB_CFG_PRINT_LEN, align 4
  %69 = zext i32 %68 to i64
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %5, align 8
  %71 = alloca i8, i64 %69, align 16
  store i64 %69, i64* %6, align 8
  %72 = load i32, i32* @TSDB_CFG_PRINT_LEN, align 4
  %73 = call i32 @memset(i8* %71, i8 signext 32, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %160 [
    i32 130, label %80
    i32 132, label %96
    i32 128, label %112
    i32 133, label %128
    i32 129, label %145
    i32 131, label %145
    i32 134, label %145
  ]

80:                                               ; preds = %66
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @tsGlobalUnit, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %83, i8* %71, i32 %88, i32 %94)
  br label %161

96:                                               ; preds = %66
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @tsGlobalUnit, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %99, i8* %71, i32 %104, i32 %110)
  br label %161

112:                                              ; preds = %66
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** @tsGlobalUnit, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %115, i8* %71, i32 %120, i32 %126)
  br label %161

128:                                              ; preds = %66
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to float*
  %136 = load float, float* %135, align 4
  %137 = fpext float %136 to double
  %138 = load i32*, i32** @tsGlobalUnit, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %131, i8* %71, double %137, i32 %143)
  br label %161

145:                                              ; preds = %66, %66, %66
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = load i32*, i32** @tsGlobalUnit, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %148, i8* %71, i8* %152, i32 %158)
  br label %161

160:                                              ; preds = %66
  br label %161

161:                                              ; preds = %160, %145, %128, %112, %96, %80
  %162 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %162)
  br label %163

163:                                              ; preds = %161, %51, %35, %27
  %164 = load i32, i32* %1, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %1, align 4
  br label %9

166:                                              ; preds = %9
  %167 = call i32 (...) @tsPrintGlobalConfigSpec()
  %168 = call i32 (...) @tsPrintOsInfo()
  %169 = call i32 (i8*, ...) @pPrint(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pPrint(i8*, ...) #1

declare dso_local i64 @strlen(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @tsPrintGlobalConfigSpec(...) #1

declare dso_local i32 @tsPrintOsInfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
