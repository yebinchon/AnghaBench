; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_JSONStringHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_JSONStringHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32**, i32**, i32*, i64, i64*, i64 }
%union.string_list_elem_attr = type { i32 }

@JSON_Parser_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32)* @JSONStringHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSONStringHandler(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca %union.string_list_elem_attr, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @JSON_Parser_GetUserData(i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %68

19:                                               ; preds = %4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 7
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %68

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %68

34:                                               ; preds = %29
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %67

39:                                               ; preds = %34
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @string_is_empty(i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %42
  %47 = bitcast %union.string_list_elem_attr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %47, i8 0, i64 4, i1 false)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = call i64 (...) @string_list_new()
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  %57 = load i64*, i64** %56, align 8
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 6
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @string_list_append(i64 %62, i8* %63, i32 %65)
  br label %67

67:                                               ; preds = %58, %42, %39, %34
  br label %168

68:                                               ; preds = %29, %24, %19, %4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %68
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %117

78:                                               ; preds = %73
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %116

83:                                               ; preds = %78
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32**, i32*** %85, align 8
  %87 = icmp ne i32** %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %83
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @string_is_empty(i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %114, label %95

95:                                               ; preds = %91
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 3
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @free(i32* %105)
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @strdup(i8* %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32**, i32*** %112, align 8
  store i32* %110, i32** %113, align 8
  br label %115

114:                                              ; preds = %91, %88, %83
  br label %115

115:                                              ; preds = %114, %107
  br label %116

116:                                              ; preds = %115, %78
  br label %167

117:                                              ; preds = %73, %68
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %166

122:                                              ; preds = %117
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %122
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = icmp ne i32** %130, null
  br i1 %131, label %132, label %164

132:                                              ; preds = %127
  %133 = load i64, i64* %7, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %164

135:                                              ; preds = %132
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @string_is_empty(i8* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %164, label %139

139:                                              ; preds = %135
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @free(i32* %142)
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32**, i32*** %147, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %139
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  %154 = load i32**, i32*** %153, align 8
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @free(i32* %155)
  br label %157

157:                                              ; preds = %151, %139
  %158 = load i8*, i8** %6, align 8
  %159 = call i8* @strdup(i8* %158)
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32**, i32*** %162, align 8
  store i32* %160, i32** %163, align 8
  br label %164

164:                                              ; preds = %157, %135, %132, %127
  br label %165

165:                                              ; preds = %164, %122
  br label %166

166:                                              ; preds = %165, %117
  br label %167

167:                                              ; preds = %166, %116
  br label %168

168:                                              ; preds = %167, %67
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 3
  store i32** null, i32*** %170, align 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32** null, i32*** %172, align 8
  %173 = load i32, i32* @JSON_Parser_Continue, align 4
  ret i32 %173
}

declare dso_local i64 @JSON_Parser_GetUserData(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @string_list_new(...) #1

declare dso_local i32 @string_list_append(i64, i8*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
