; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/cid/extr_cidload.c_cid_parse_dict.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/cid/extr_cidload.c_cid_parse_dict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8*, i64 }
%struct.TYPE_16__ = type { i64 }

@FT_Err_Ok = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%ADOBeginFontDict\00", align 1
@cid_field_records = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cid_parse_dict: No font dictionary found\0A\00", align 1
@Invalid_File_Format = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_18__*, i8*, i32)* @cid_parse_dict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cid_parse_dict(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load i64, i64* @FT_Err_Ok, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store i64 %31, i64* %34, align 8
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8* %39, i8** %12, align 8
  br label %40

40:                                               ; preds = %225, %4
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = call i32 @cid_parser_skip_spaces(%struct.TYPE_17__* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp uge i8* %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  %54 = load i8*, i8** %12, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = getelementptr inbounds i8, i8* %55, i64 -17
  store i8* %56, i8** %13, align 8
  br label %63

57:                                               ; preds = %40
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -17
  store i8* %62, i8** %13, align 8
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %90, %63
  %65 = load i8*, i8** %11, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = icmp ult i8* %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load i8*, i8** %11, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 37
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load i8*, i8** %11, align 8
  %75 = call i64 @ft_strncmp(i8* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %83, %77
  br label %89

89:                                               ; preds = %88, %73, %68
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %11, align 8
  br label %64

93:                                               ; preds = %64
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %11, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = icmp uge i8* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %230

102:                                              ; preds = %93
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = call i32 @cid_parser_skip_PS_token(%struct.TYPE_17__* %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = icmp uge i8* %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %102
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %102
  br label %230

118:                                              ; preds = %111
  %119 = load i8*, i8** %11, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 47
  br i1 %122, label %123, label %225

123:                                              ; preds = %118
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ult i8* %125, %126
  br i1 %127, label %128, label %225

128:                                              ; preds = %123
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %11, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %224

142:                                              ; preds = %128
  %143 = load i32, i32* %14, align 4
  %144 = icmp slt i32 %143, 22
  br i1 %144, label %145, label %224

145:                                              ; preds = %142
  %146 = load i32, i32* @cid_field_records, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %15, align 8
  br label %149

149:                                              ; preds = %220, %145
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** %16, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  br label %223

157:                                              ; preds = %149
  %158 = load i8*, i8** %11, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = load i8*, i8** %16, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %161, %165
  br i1 %166, label %167, label %220

167:                                              ; preds = %157
  %168 = load i32, i32* %14, align 4
  %169 = load i8*, i8** %16, align 8
  %170 = call i32 @ft_strlen(i8* %169)
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %220

172:                                              ; preds = %167
  store i32 1, i32* %17, align 4
  br label %173

173:                                              ; preds = %193, %172
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %173
  %178 = load i8*, i8** %11, align 8
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load i8*, i8** %16, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %183, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  br label %196

192:                                              ; preds = %177
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %17, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  br label %173

196:                                              ; preds = %191, %173
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %196
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %204 = call i64 @cid_load_keyword(%struct.TYPE_19__* %201, %struct.TYPE_18__* %202, %struct.TYPE_16__* %203)
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 2
  store i64 %204, i64* %207, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %200
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %5, align 8
  br label %245

218:                                              ; preds = %200
  br label %223

219:                                              ; preds = %196
  br label %220

220:                                              ; preds = %219, %167, %157
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 1
  store %struct.TYPE_16__* %222, %struct.TYPE_16__** %15, align 8
  br label %149

223:                                              ; preds = %218, %156
  br label %224

224:                                              ; preds = %223, %142, %128
  br label %225

225:                                              ; preds = %224, %123, %118
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %11, align 8
  br label %40

230:                                              ; preds = %117, %101
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %230
  %237 = call i32 @FT_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %238 = load i32, i32* @Invalid_File_Format, align 4
  %239 = call i64 @FT_THROW(i32 %238)
  store i64 %239, i64* %5, align 8
  br label %245

240:                                              ; preds = %230
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %5, align 8
  br label %245

245:                                              ; preds = %240, %236, %213
  %246 = load i64, i64* %5, align 8
  ret i64 %246
}

declare dso_local i32 @cid_parser_skip_spaces(%struct.TYPE_17__*) #1

declare dso_local i64 @ft_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @cid_parser_skip_PS_token(%struct.TYPE_17__*) #1

declare dso_local i32 @ft_strlen(i8*) #1

declare dso_local i64 @cid_load_keyword(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_16__*) #1

declare dso_local i32 @FT_ERROR(i8*) #1

declare dso_local i64 @FT_THROW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
