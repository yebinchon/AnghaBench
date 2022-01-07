; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/xml/extr_rxml.c_rxml_load_document_string.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/xml/extr_rxml.c_rxml_load_document_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rxml_attrib_node*, i8*, i8*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.rxml_attrib_node = type { i8*, i8*, %struct.rxml_attrib_node* }
%struct.rxml_parse_buffer = type { i8*, %struct.TYPE_9__**, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8* }

@BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @rxml_load_document_string(i8* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.rxml_parse_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca %struct.rxml_attrib_node*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store %struct.rxml_parse_buffer* null, %struct.rxml_parse_buffer** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  store %struct.rxml_attrib_node* null, %struct.rxml_attrib_node** %12, align 8
  %14 = call i64 @malloc(i32 24)
  %15 = inttoptr i64 %14 to %struct.rxml_parse_buffer*
  store %struct.rxml_parse_buffer* %15, %struct.rxml_parse_buffer** %5, align 8
  %16 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %17 = icmp ne %struct.rxml_parse_buffer* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %234

19:                                               ; preds = %1
  %20 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %9, align 8
  %23 = call i64 @calloc(i32 1, i32 8)
  %24 = inttoptr i64 %23 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %234

28:                                               ; preds = %19
  %29 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BUFSIZE, align 4
  %33 = call i32 @yxml_init(%struct.TYPE_8__* %10, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %227, %28
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %230

38:                                               ; preds = %34
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = call i32 @yxml_parse(%struct.TYPE_8__* %10, i8 signext %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %234

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  switch i32 %46, label %225 [
    i32 128, label %47
    i32 129, label %92
    i32 130, label %125
    i32 132, label %155
    i32 131, label %177
    i32 133, label %207
  ]

47:                                               ; preds = %45
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %79

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %57 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %58, i64 %59
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  %63 = call i64 @calloc(i32 1, i32 40)
  %64 = inttoptr i64 %63 to %struct.TYPE_9__*
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %11, align 8
  br label %78

70:                                               ; preds = %50
  %71 = call i64 @calloc(i32 1, i32 40)
  %72 = inttoptr i64 %71 to %struct.TYPE_9__*
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  store %struct.TYPE_9__* %77, %struct.TYPE_9__** %11, align 8
  br label %78

78:                                               ; preds = %70, %54
  br label %84

79:                                               ; preds = %47
  %80 = call i64 @calloc(i32 1, i32 40)
  %81 = inttoptr i64 %80 to %struct.TYPE_9__*
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %11, align 8
  br label %84

84:                                               ; preds = %79, %78
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i8* @strdup(i8* %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  store %struct.rxml_attrib_node* null, %struct.rxml_attrib_node** %12, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %226

92:                                               ; preds = %45
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %97 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ugt i8* %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %92
  %101 = load i8*, i8** %9, align 8
  store i8 0, i8* %101, align 1
  %102 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %103 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i8* @strdup(i8* %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  %108 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %109 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %9, align 8
  br label %111

111:                                              ; preds = %100, %92
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %6, align 8
  %118 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %119 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %118, i32 0, i32 1
  %120 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %119, align 8
  %121 = load i64, i64* %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %120, i64 %121
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %122, align 8
  store %struct.TYPE_9__* %123, %struct.TYPE_9__** %11, align 8
  br label %124

124:                                              ; preds = %115, %111
  br label %226

125:                                              ; preds = %45
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %151, %125
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %128, 8
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %130, %126
  %140 = phi i1 [ false, %126 ], [ %138, %130 ]
  br i1 %140, label %141, label %154

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %9, align 8
  store i8 %147, i8* %148, align 1
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  br label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %126

154:                                              ; preds = %139
  br label %226

155:                                              ; preds = %45
  %156 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %12, align 8
  %157 = icmp ne %struct.rxml_attrib_node* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = call i64 @calloc(i32 1, i32 24)
  %160 = inttoptr i64 %159 to %struct.rxml_attrib_node*
  %161 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %12, align 8
  %162 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %161, i32 0, i32 2
  store %struct.rxml_attrib_node* %160, %struct.rxml_attrib_node** %162, align 8
  store %struct.rxml_attrib_node* %160, %struct.rxml_attrib_node** %12, align 8
  br label %168

163:                                              ; preds = %155
  %164 = call i64 @calloc(i32 1, i32 24)
  %165 = inttoptr i64 %164 to %struct.rxml_attrib_node*
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  store %struct.rxml_attrib_node* %165, %struct.rxml_attrib_node** %167, align 8
  store %struct.rxml_attrib_node* %165, %struct.rxml_attrib_node** %12, align 8
  br label %168

168:                                              ; preds = %163, %158
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @strdup(i8* %170)
  %172 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %12, align 8
  %173 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %172, i32 0, i32 1
  store i8* %171, i8** %173, align 8
  %174 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %175 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  store i8* %176, i8** %9, align 8
  br label %226

177:                                              ; preds = %45
  store i32 0, i32* %8, align 4
  br label %178

178:                                              ; preds = %203, %177
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp ult i64 %180, 8
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br label %191

191:                                              ; preds = %182, %178
  %192 = phi i1 [ false, %178 ], [ %190, %182 ]
  br i1 %192, label %193, label %206

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %9, align 8
  store i8 %199, i8* %200, align 1
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %9, align 8
  br label %203

203:                                              ; preds = %193
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %178

206:                                              ; preds = %191
  br label %226

207:                                              ; preds = %45
  %208 = load i8*, i8** %9, align 8
  %209 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %210 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ugt i8* %208, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %207
  %214 = load i8*, i8** %9, align 8
  store i8 0, i8* %214, align 1
  %215 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %216 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @strdup(i8* %217)
  %219 = load %struct.rxml_attrib_node*, %struct.rxml_attrib_node** %12, align 8
  %220 = getelementptr inbounds %struct.rxml_attrib_node, %struct.rxml_attrib_node* %219, i32 0, i32 0
  store i8* %218, i8** %220, align 8
  %221 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %222 = getelementptr inbounds %struct.rxml_parse_buffer, %struct.rxml_parse_buffer* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  store i8* %223, i8** %9, align 8
  br label %224

224:                                              ; preds = %213, %207
  br label %226

225:                                              ; preds = %45
  br label %226

226:                                              ; preds = %225, %224, %206, %168, %154, %124, %84
  br label %227

227:                                              ; preds = %226
  %228 = load i8*, i8** %3, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %3, align 8
  br label %34

230:                                              ; preds = %34
  %231 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %232 = call i32 @free(%struct.rxml_parse_buffer* %231)
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %233, %struct.TYPE_10__** %2, align 8
  br label %239

234:                                              ; preds = %44, %27, %18
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %236 = call i32 @rxml_free_document(%struct.TYPE_10__* %235)
  %237 = load %struct.rxml_parse_buffer*, %struct.rxml_parse_buffer** %5, align 8
  %238 = call i32 @free(%struct.rxml_parse_buffer* %237)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %239

239:                                              ; preds = %234, %230
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %240
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @yxml_init(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @yxml_parse(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.rxml_parse_buffer*) #1

declare dso_local i32 @rxml_free_document(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
