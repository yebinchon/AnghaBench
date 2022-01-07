; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_JsonToPack.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Pack.c_JsonToPack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i64, i8**, %struct.TYPE_10__** }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__** }

@JSON_TYPE_ARRAY = common dso_local global i64 0, align 8
@JSON_TYPE_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @JsonToPack(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* null, i32** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %152

19:                                               ; preds = %1
  %20 = call i32* (...) @NewPack()
  store i32* %20, i32** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call %struct.TYPE_11__* @JsonValueGetObject(%struct.TYPE_10__* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %5, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %150

25:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %146, %25
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %149

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 %42
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @JSON_TYPE_ARRAY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %140

50:                                               ; preds = %32
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %10, align 8
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %136, %50
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %139

61:                                               ; preds = %55
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %64, i64 %65
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @JSON_TYPE_OBJECT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %61
  %73 = load i32*, i32** %4, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %76, i64 %77
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @JsonTryParseValueAddToPack(i32* %73, %struct.TYPE_10__* %79, i8* %80, i64 %81, i32 %85, i32 0)
  br label %135

87:                                               ; preds = %61
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 %91
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  store %struct.TYPE_10__* %93, %struct.TYPE_10__** %11, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %12, align 8
  store i64 0, i64* %13, align 8
  br label %98

98:                                               ; preds = %131, %87
  %99 = load i64, i64* %13, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ult i64 %99, %102
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %14, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %113, i64 %114
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  store %struct.TYPE_10__* %116, %struct.TYPE_10__** %15, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = call i32 @PackSetCurrentJsonGroupName(i32* %117, i8* %118)
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @JsonTryParseValueAddToPack(i32* %120, %struct.TYPE_10__* %121, i8* %122, i64 %123, i32 %127, i32 0)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @PackSetCurrentJsonGroupName(i32* %129, i8* null)
  br label %131

131:                                              ; preds = %104
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %13, align 8
  br label %98

134:                                              ; preds = %98
  br label %135

135:                                              ; preds = %134, %72
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %55

139:                                              ; preds = %55
  br label %145

140:                                              ; preds = %32
  %141 = load i32*, i32** %4, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = call i32 @JsonTryParseValueAddToPack(i32* %141, %struct.TYPE_10__* %142, i8* %143, i64 0, i32 1, i32 1)
  br label %145

145:                                              ; preds = %140, %139
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %6, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %6, align 8
  br label %26

149:                                              ; preds = %26
  br label %150

150:                                              ; preds = %149, %19
  %151 = load i32*, i32** %4, align 8
  store i32* %151, i32** %2, align 8
  br label %152

152:                                              ; preds = %150, %18
  %153 = load i32*, i32** %2, align 8
  ret i32* %153
}

declare dso_local i32* @NewPack(...) #1

declare dso_local %struct.TYPE_11__* @JsonValueGetObject(%struct.TYPE_10__*) #1

declare dso_local i32 @JsonTryParseValueAddToPack(i32*, %struct.TYPE_10__*, i8*, i64, i32, i32) #1

declare dso_local i32 @PackSetCurrentJsonGroupName(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
