; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_parse_string.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i8*, i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i8*)*, i64 (i32)* }

@cJSON_String = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_string(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i8* @buffer_at_offset(%struct.TYPE_8__* %13)
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = call i8* @buffer_at_offset(%struct.TYPE_8__* %16)
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8* %18, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = call i8* @buffer_at_offset(%struct.TYPE_8__* %19)
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 34
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %202

26:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %71, %26
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 34
  br label %44

44:                                               ; preds = %39, %27
  %45 = phi i1 [ false, %27 ], [ %43, %39 ]
  br i1 %45, label %46, label %74

46:                                               ; preds = %44
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %54 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %202

66:                                               ; preds = %52
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %11, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  br label %71

71:                                               ; preds = %66, %46
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  br label %27

74:                                               ; preds = %44
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %75 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp uge i64 %81, %84
  br i1 %85, label %91, label %86

86:                                               ; preds = %74
  %87 = load i8*, i8** %7, align 8
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 34
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %74
  br label %202

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = call i8* @buffer_at_offset(%struct.TYPE_8__* %94)
  %96 = ptrtoint i8* %93 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = load i64, i64* %11, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %10, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64 (i32)*, i64 (i32)** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  %107 = trunc i64 %106 to i32
  %108 = call i64 %104(i32 %107)
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %92
  br label %202

113:                                              ; preds = %92
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** %8, align 8
  br label %115

115:                                              ; preds = %180, %113
  %116 = load i8*, i8** %6, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %181

119:                                              ; preds = %115
  %120 = load i8*, i8** %6, align 8
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %122, 92
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %6, align 8
  %127 = load i8, i8* %125, align 1
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  store i8 %127, i8* %128, align 1
  br label %180

130:                                              ; preds = %119
  store i8 2, i8* %12, align 1
  %131 = load i8*, i8** %7, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = icmp slt i64 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %202

138:                                              ; preds = %130
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  switch i32 %142, label %173 [
    i32 98, label %143
    i32 102, label %146
    i32 110, label %149
    i32 114, label %152
    i32 116, label %155
    i32 34, label %158
    i32 92, label %158
    i32 47, label %158
    i32 117, label %164
  ]

143:                                              ; preds = %138
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  store i8 8, i8* %144, align 1
  br label %174

146:                                              ; preds = %138
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  store i8 12, i8* %147, align 1
  br label %174

149:                                              ; preds = %138
  %150 = load i8*, i8** %8, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %8, align 8
  store i8 10, i8* %150, align 1
  br label %174

152:                                              ; preds = %138
  %153 = load i8*, i8** %8, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %8, align 8
  store i8 13, i8* %153, align 1
  br label %174

155:                                              ; preds = %138
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %8, align 8
  store i8 9, i8* %156, align 1
  br label %174

158:                                              ; preds = %138, %138, %138
  %159 = load i8*, i8** %6, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %8, align 8
  store i8 %161, i8* %162, align 1
  br label %174

164:                                              ; preds = %138
  %165 = load i8*, i8** %6, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = call zeroext i8 @utf16_literal_to_utf8(i8* %165, i8* %166, i8** %8)
  store i8 %167, i8* %12, align 1
  %168 = load i8, i8* %12, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %164
  br label %202

172:                                              ; preds = %164
  br label %174

173:                                              ; preds = %138
  br label %202

174:                                              ; preds = %172, %158, %155, %152, %149, %146, %143
  %175 = load i8, i8* %12, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8*, i8** %6, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %6, align 8
  br label %180

180:                                              ; preds = %174, %124
  br label %115

181:                                              ; preds = %115
  %182 = load i8*, i8** %8, align 8
  store i8 0, i8* %182, align 1
  %183 = load i32, i32* @cJSON_String, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = ptrtoint i8* %189 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 2
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %199, align 8
  store i32 1, i32* %3, align 4
  br label %226

202:                                              ; preds = %173, %171, %137, %112, %91, %65, %25
  %203 = load i8*, i8** %9, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32 (i8*)*, i32 (i8*)** %208, align 8
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 %209(i8* %210)
  br label %212

212:                                              ; preds = %205, %202
  %213 = load i8*, i8** %6, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %225

215:                                              ; preds = %212
  %216 = load i8*, i8** %6, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = ptrtoint i8* %216 to i64
  %221 = ptrtoint i8* %219 to i64
  %222 = sub i64 %220, %221
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %215, %212
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %225, %181
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i8* @buffer_at_offset(%struct.TYPE_8__*) #1

declare dso_local zeroext i8 @utf16_literal_to_utf8(i8*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
