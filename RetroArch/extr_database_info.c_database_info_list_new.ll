; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_info_list_new.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_database_info.c_database_info_list_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @database_info_list_new(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %14 = call i32* (...) @libretrodb_new()
  store i32* %14, i32** %9, align 8
  %15 = call i32* (...) @libretrodb_cursor_new()
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  br label %206

22:                                               ; preds = %18
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @database_cursor_open(i32* %23, i32* %24, i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %206

30:                                               ; preds = %22
  %31 = call i64 @malloc(i32 144)
  %32 = inttoptr i64 %31 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %8, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = icmp ne %struct.TYPE_10__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %206

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %40, align 8
  br label %41

41:                                               ; preds = %198, %36
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %199

44:                                               ; preds = %41
  %45 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 144, i1 false)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @database_cursor_iterate(i32* %46, %struct.TYPE_10__* %11)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %198

50:                                               ; preds = %44
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %12, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 144
  %56 = trunc i64 %55 to i32
  %57 = call i64 @realloc(%struct.TYPE_10__* %51, i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %13, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = icmp ne %struct.TYPE_10__* %59, null
  br i1 %60, label %188, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 16
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 16
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = call i32 @free(%struct.TYPE_10__* %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 15
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 15
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @free(%struct.TYPE_10__* %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 14
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 14
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i32 @free(%struct.TYPE_10__* %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 13
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = icmp ne %struct.TYPE_10__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 13
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = call i32 @free(%struct.TYPE_10__* %91)
  br label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 12
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = icmp ne %struct.TYPE_10__* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 12
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = call i32 @free(%struct.TYPE_10__* %99)
  br label %101

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 11
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 11
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = call i32 @free(%struct.TYPE_10__* %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 10
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 10
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = call i32 @free(%struct.TYPE_10__* %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 9
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = icmp ne %struct.TYPE_10__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 9
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = call i32 @free(%struct.TYPE_10__* %123)
  br label %125

125:                                              ; preds = %121, %117
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = icmp ne %struct.TYPE_10__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = call i32 @free(%struct.TYPE_10__* %131)
  br label %133

133:                                              ; preds = %129, %125
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = icmp ne %struct.TYPE_10__* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 7
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = call i32 @free(%struct.TYPE_10__* %139)
  br label %141

141:                                              ; preds = %137, %133
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = icmp ne %struct.TYPE_10__* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i32 @free(%struct.TYPE_10__* %147)
  br label %149

149:                                              ; preds = %145, %141
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = icmp ne %struct.TYPE_10__* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = call i32 @free(%struct.TYPE_10__* %155)
  br label %157

157:                                              ; preds = %153, %149
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = icmp ne %struct.TYPE_10__* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @free(%struct.TYPE_10__* %163)
  br label %165

165:                                              ; preds = %161, %157
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %166, align 8
  %168 = icmp ne %struct.TYPE_10__* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = call i32 @free(%struct.TYPE_10__* %171)
  br label %173

173:                                              ; preds = %169, %165
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = icmp ne %struct.TYPE_10__* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = call i32 @free(%struct.TYPE_10__* %179)
  br label %181

181:                                              ; preds = %177, %173
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %183 = call i32 @database_info_list_free(%struct.TYPE_10__* %182)
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %185 = call i32 @free(%struct.TYPE_10__* %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %187 = call i32 @free(%struct.TYPE_10__* %186)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  br label %206

188:                                              ; preds = %50
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %189, %struct.TYPE_10__** %7, align 8
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %192
  store %struct.TYPE_10__* %193, %struct.TYPE_10__** %12, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %195 = call i32 @memcpy(%struct.TYPE_10__* %194, %struct.TYPE_10__* %11, i32 144)
  %196 = load i32, i32* %6, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %188, %44
  br label %41

199:                                              ; preds = %41
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  store %struct.TYPE_10__* %200, %struct.TYPE_10__** %202, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  br label %206

206:                                              ; preds = %199, %181, %35, %29, %21
  %207 = load i32*, i32** %9, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %215

209:                                              ; preds = %206
  %210 = load i32*, i32** %9, align 8
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @database_cursor_close(i32* %210, i32* %211)
  %213 = load i32*, i32** %9, align 8
  %214 = call i32 @libretrodb_free(i32* %213)
  br label %215

215:                                              ; preds = %209, %206
  %216 = load i32*, i32** %10, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %10, align 8
  %220 = call i32 @libretrodb_cursor_free(i32* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  ret %struct.TYPE_10__* %222
}

declare dso_local i32* @libretrodb_new(...) #1

declare dso_local i32* @libretrodb_cursor_new(...) #1

declare dso_local i64 @database_cursor_open(i32*, i32*, i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @database_cursor_iterate(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @realloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @database_info_list_free(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @database_cursor_close(i32*, i32*) #1

declare dso_local i32 @libretrodb_free(i32*) #1

declare dso_local i32 @libretrodb_cursor_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
