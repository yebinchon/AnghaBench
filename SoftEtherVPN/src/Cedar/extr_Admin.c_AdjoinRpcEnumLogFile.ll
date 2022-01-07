; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdjoinRpcEnumLogFile.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_AdjoinRpcEnumLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@CmpLogFile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AdjoinRpcEnumLogFile(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = icmp eq %struct.TYPE_11__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = icmp eq %struct.TYPE_11__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %176

19:                                               ; preds = %15
  %20 = load i32, i32* @CmpLogFile, align 4
  %21 = call i32* @NewListFast(i32 %20)
  store i32* %21, i32** %5, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %63, %19
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %32
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %7, align 8
  %34 = call i8* @ZeroMalloc(i32 16)
  %35 = bitcast i8* %34 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %8, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @StrCpy(i32 %43, i32 4, i32 %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @StrCpy(i32 %50, i32 4, i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = call i32 @Add(i32* %60, %struct.TYPE_12__* %61)
  br label %63

63:                                               ; preds = %28
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %22

66:                                               ; preds = %22
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %108, %66
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %67
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %77
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %9, align 8
  %79 = call i8* @ZeroMalloc(i32 16)
  %80 = bitcast i8* %79 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %10, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @StrCpy(i32 %88, i32 4, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @StrCpy(i32 %95, i32 4, i32 %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = call i32 @Add(i32* %105, %struct.TYPE_12__* %106)
  br label %108

108:                                              ; preds = %73
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %67

111:                                              ; preds = %67
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = call i32 @FreeRpcEnumLogFile(%struct.TYPE_11__* %112)
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @Sort(i32* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %117 = call i32 @Zero(%struct.TYPE_11__* %116, i32 16)
  %118 = load i32*, i32** %5, align 8
  %119 = call i64 @LIST_NUM(i32* %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = mul i64 16, %124
  %126 = trunc i64 %125 to i32
  %127 = call i8* @ZeroMalloc(i32 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_10__*
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %130, align 8
  store i64 0, i64* %6, align 8
  br label %131

131:                                              ; preds = %170, %111
  %132 = load i64, i64* %6, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %131
  %138 = load i32*, i32** %5, align 8
  %139 = load i64, i64* %6, align 8
  %140 = call %struct.TYPE_12__* @LIST_DATA(i32* %138, i64 %139)
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %11, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %144
  store %struct.TYPE_10__* %145, %struct.TYPE_10__** %12, align 8
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @StrCpy(i32 %148, i32 4, i32 %151)
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @StrCpy(i32 %155, i32 4, i32 %158)
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %137
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %131

173:                                              ; preds = %131
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @FreeEnumLogFile(i32* %174)
  br label %176

176:                                              ; preds = %173, %18
  ret void
}

declare dso_local i32* @NewListFast(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @Add(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @FreeRpcEnumLogFile(%struct.TYPE_11__*) #1

declare dso_local i32 @Sort(i32*) #1

declare dso_local i32 @Zero(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_12__* @LIST_DATA(i32*, i64) #1

declare dso_local i32 @FreeEnumLogFile(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
