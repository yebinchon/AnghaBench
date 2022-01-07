; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_route.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_parser.c_parse_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"layers\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Route Layer must specify input layers\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_route(%struct.TYPE_10__* noalias sret %0, i32* %1, i64 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = bitcast %struct.TYPE_9__* %5 to i64*
  store i64 %2, i64* %19, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i8* @option_find(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %45, %28
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 44
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load i32, i32* %10, align 4
  %50 = call i32* @calloc(i32 %49, i32 4)
  store i32* %50, i32** %12, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32* @calloc(i32 %51, i32 4)
  store i32* %52, i32** %13, align 8
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %88, %48
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @atoi(i8* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 44)
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %8, align 8
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %65, %57
  %71 = load i32, i32* %14, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %53

91:                                               ; preds = %53
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32*, i32** %13, align 8
  call void @make_route_layer(%struct.TYPE_10__* sret %0, i32 %94, i32 %95, i32* %96, i32* %97)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %104
  %106 = bitcast %struct.TYPE_12__* %16 to i8*
  %107 = bitcast %struct.TYPE_12__* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 8 %107, i64 32, i1 false)
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 2
  store i64 %115, i64* %116, align 8
  store i32 1, i32* %11, align 4
  br label %117

117:                                              ; preds = %157, %91
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %160

121:                                              ; preds = %117
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %17, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %131
  %133 = bitcast %struct.TYPE_12__* %18 to i8*
  %134 = bitcast %struct.TYPE_12__* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 32, i1 false)
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %136, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %121
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %148
  store i64 %151, i64* %149, align 8
  br label %156

152:                                              ; preds = %140, %121
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 0
  store i64 0, i64* %154, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %0, i32 0, i32 1
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %146
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %117

160:                                              ; preds = %117
  ret void
}

declare dso_local i8* @option_find(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local void @make_route_layer(%struct.TYPE_10__* sret, i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
