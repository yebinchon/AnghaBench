; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_top_bot_datablock_filter.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_top_bot_datablock_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }

@TSDB_FUNC_TOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @top_bot_datablock_filter(%struct.TYPE_13__* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = call %struct.TYPE_14__* @GET_RES_INFO(%struct.TYPE_13__* %13)
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %21, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %167

30:                                               ; preds = %4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %12, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @TSDB_FUNC_TOP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %102

37:                                               ; preds = %30
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %101 [
    i32 128, label %41
    i32 129, label %51
    i32 130, label %61
    i32 133, label %71
    i32 131, label %81
    i32 132, label %91
  ]

41:                                               ; preds = %37
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @GET_INT8_VAL(i8* %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %43, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %167

51:                                               ; preds = %37
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @GET_INT16_VAL(i8* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %53, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %167

61:                                               ; preds = %37
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @GET_INT32_VAL(i8* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %63, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %167

71:                                               ; preds = %37
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @GET_INT64_VAL(i8* %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i64 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %73, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %167

81:                                               ; preds = %37
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @GET_FLOAT_VAL(i8* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %83, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %5, align 4
  br label %167

91:                                               ; preds = %37
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @GET_DOUBLE_VAL(i8* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %93, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %167

101:                                              ; preds = %37
  store i32 1, i32* %5, align 4
  br label %167

102:                                              ; preds = %30
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %166 [
    i32 128, label %106
    i32 129, label %116
    i32 130, label %126
    i32 133, label %136
    i32 131, label %146
    i32 132, label %156
  ]

106:                                              ; preds = %102
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @GET_INT8_VAL(i8* %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %108, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %5, align 4
  br label %167

116:                                              ; preds = %102
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @GET_INT16_VAL(i8* %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %118, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %5, align 4
  br label %167

126:                                              ; preds = %102
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @GET_INT32_VAL(i8* %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %128, %133
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %5, align 4
  br label %167

136:                                              ; preds = %102
  %137 = load i8*, i8** %8, align 8
  %138 = call i32 @GET_INT64_VAL(i8* %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %138, %143
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %5, align 4
  br label %167

146:                                              ; preds = %102
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @GET_FLOAT_VAL(i8* %147)
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %148, %153
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %167

156:                                              ; preds = %102
  %157 = load i8*, i8** %8, align 8
  %158 = call i32 @GET_DOUBLE_VAL(i8* %157)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %158, %163
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  br label %167

166:                                              ; preds = %102
  store i32 1, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %156, %146, %136, %126, %116, %106, %101, %91, %81, %71, %61, %51, %41, %29
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_14__* @GET_RES_INFO(%struct.TYPE_13__*) #1

declare dso_local i32 @GET_INT8_VAL(i8*) #1

declare dso_local i32 @GET_INT16_VAL(i8*) #1

declare dso_local i32 @GET_INT32_VAL(i8*) #1

declare dso_local i32 @GET_INT64_VAL(i8*) #1

declare dso_local i32 @GET_FLOAT_VAL(i8*) #1

declare dso_local i32 @GET_DOUBLE_VAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
