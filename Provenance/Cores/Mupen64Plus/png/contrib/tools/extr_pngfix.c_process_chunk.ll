; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_process_chunk.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_process_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, i32, i32, %struct.chunk*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 (%struct.file*, i32)*, i32*, %struct.TYPE_2__*, i32 }
%struct.chunk = type { i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c" %lu 0x%.8x 0x%.8x\0A\00", align 1
@CRC_ERROR = common dso_local global i32 0, align 4
@SKIP_BAD_CRC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"bad CRC\00", align 1
@READ_ERROR_CODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"bad CRC in critical chunk\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"skipped: bad CRC\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"IHDR length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*, i32, i32, i32)* @process_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_chunk(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.chunk*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @type_name(i32 %25, i32 %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %20, %4
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %39
  %47 = load i32, i32* @CRC_ERROR, align 4
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 14
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SKIP_BAD_CRC, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @type_message(%struct.file* %60, i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %76

63:                                               ; preds = %46
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @CRITICAL(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = load i32, i32* @READ_ERROR_CODE, align 4
  %70 = call i32 @stop(%struct.file* %68, i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %75

71:                                               ; preds = %63
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @type_message(%struct.file* %72, i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %230

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %59
  br label %77

77:                                               ; preds = %76, %39
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 14
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @skip_chunk_type(%struct.TYPE_2__* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %230

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 132
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.file*, %struct.file** %5, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 12
  %91 = load i32 (%struct.file*, i32)*, i32 (%struct.file*, i32)** %90, align 8
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = call i32 %91(%struct.file* %92, i32 0)
  br label %128

94:                                               ; preds = %85
  %95 = load %struct.file*, %struct.file** %5, align 8
  %96 = getelementptr inbounds %struct.file, %struct.file* %95, i32 0, i32 13
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.file*, %struct.file** %5, align 8
  %101 = getelementptr inbounds %struct.file, %struct.file* %100, i32 0, i32 12
  %102 = load i32 (%struct.file*, i32)*, i32 (%struct.file*, i32)** %101, align 8
  %103 = load %struct.file*, %struct.file** %5, align 8
  %104 = call i32 %102(%struct.file* %103, i32 1)
  br label %127

105:                                              ; preds = %94
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 4
  %108 = load %struct.chunk*, %struct.chunk** %107, align 8
  %109 = icmp ne %struct.chunk* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.file*, %struct.file** %5, align 8
  %113 = getelementptr inbounds %struct.file, %struct.file* %112, i32 0, i32 4
  %114 = load %struct.chunk*, %struct.chunk** %113, align 8
  %115 = getelementptr inbounds %struct.chunk, %struct.chunk* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 132
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert(i32 %118)
  %120 = load %struct.file*, %struct.file** %5, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.file*, %struct.file** %5, align 8
  %124 = getelementptr inbounds %struct.file, %struct.file* %123, i32 0, i32 4
  %125 = load %struct.chunk*, %struct.chunk** %124, align 8
  %126 = getelementptr inbounds %struct.chunk, %struct.chunk* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  br label %127

127:                                              ; preds = %105, %99
  br label %128

128:                                              ; preds = %127, %88
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.file*, %struct.file** %5, align 8
  %131 = getelementptr inbounds %struct.file, %struct.file* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.file*, %struct.file** %5, align 8
  %134 = getelementptr inbounds %struct.file, %struct.file* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.file*, %struct.file** %5, align 8
  %136 = call i32 @getpos(%struct.file* %135)
  %137 = load %struct.file*, %struct.file** %5, align 8
  %138 = getelementptr inbounds %struct.file, %struct.file* %137, i32 0, i32 4
  %139 = load %struct.chunk*, %struct.chunk** %138, align 8
  %140 = getelementptr inbounds %struct.chunk, %struct.chunk* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.file*, %struct.file** %5, align 8
  %142 = getelementptr inbounds %struct.file, %struct.file* %141, i32 0, i32 4
  %143 = load %struct.chunk*, %struct.chunk** %142, align 8
  %144 = getelementptr inbounds %struct.chunk, %struct.chunk* %143, i32 0, i32 2
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %9, align 4
  switch i32 %145, label %146 [
    i32 131, label %147
    i32 128, label %191
    i32 130, label %191
    i32 129, label %204
    i32 132, label %217
  ]

146:                                              ; preds = %128
  br label %241

147:                                              ; preds = %128
  %148 = load %struct.file*, %struct.file** %5, align 8
  %149 = getelementptr inbounds %struct.file, %struct.file* %148, i32 0, i32 4
  %150 = load %struct.chunk*, %struct.chunk** %149, align 8
  store %struct.chunk* %150, %struct.chunk** %10, align 8
  %151 = load %struct.chunk*, %struct.chunk** %10, align 8
  %152 = getelementptr inbounds %struct.chunk, %struct.chunk* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 13
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load %struct.file*, %struct.file** %5, align 8
  %157 = call i32 @stop_invalid(%struct.file* %156, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %147
  %159 = load %struct.chunk*, %struct.chunk** %10, align 8
  %160 = call i32 @setpos(%struct.chunk* %159)
  %161 = load %struct.file*, %struct.file** %5, align 8
  %162 = call i8* @reread_4(%struct.file* %161)
  %163 = load %struct.file*, %struct.file** %5, align 8
  %164 = getelementptr inbounds %struct.file, %struct.file* %163, i32 0, i32 11
  store i8* %162, i8** %164, align 8
  %165 = load %struct.file*, %struct.file** %5, align 8
  %166 = call i8* @reread_4(%struct.file* %165)
  %167 = load %struct.file*, %struct.file** %5, align 8
  %168 = getelementptr inbounds %struct.file, %struct.file* %167, i32 0, i32 10
  store i8* %166, i8** %168, align 8
  %169 = load %struct.file*, %struct.file** %5, align 8
  %170 = call i8* @reread_byte(%struct.file* %169)
  %171 = load %struct.file*, %struct.file** %5, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 9
  store i8* %170, i8** %172, align 8
  %173 = load %struct.file*, %struct.file** %5, align 8
  %174 = call i8* @reread_byte(%struct.file* %173)
  %175 = load %struct.file*, %struct.file** %5, align 8
  %176 = getelementptr inbounds %struct.file, %struct.file* %175, i32 0, i32 8
  store i8* %174, i8** %176, align 8
  %177 = load %struct.file*, %struct.file** %5, align 8
  %178 = call i8* @reread_byte(%struct.file* %177)
  %179 = load %struct.file*, %struct.file** %5, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 7
  store i8* %178, i8** %180, align 8
  %181 = load %struct.file*, %struct.file** %5, align 8
  %182 = call i8* @reread_byte(%struct.file* %181)
  %183 = load %struct.file*, %struct.file** %5, align 8
  %184 = getelementptr inbounds %struct.file, %struct.file* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  %185 = load %struct.file*, %struct.file** %5, align 8
  %186 = call i8* @reread_byte(%struct.file* %185)
  %187 = load %struct.file*, %struct.file** %5, align 8
  %188 = getelementptr inbounds %struct.file, %struct.file* %187, i32 0, i32 5
  store i8* %186, i8** %188, align 8
  %189 = load %struct.file*, %struct.file** %5, align 8
  %190 = call i32 @calc_image_size(%struct.file* %189)
  br label %241

191:                                              ; preds = %128, %128
  %192 = load %struct.file*, %struct.file** %5, align 8
  %193 = call i32 @process_zTXt_iCCP(%struct.file* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %241

196:                                              ; preds = %191
  %197 = load %struct.file*, %struct.file** %5, align 8
  %198 = getelementptr inbounds %struct.file, %struct.file* %197, i32 0, i32 4
  %199 = call i32 @chunk_end(%struct.chunk** %198)
  %200 = load %struct.file*, %struct.file** %5, align 8
  %201 = load %struct.file*, %struct.file** %5, align 8
  %202 = getelementptr inbounds %struct.file, %struct.file* %201, i32 0, i32 3
  %203 = call i32 @file_setpos(%struct.file* %200, i32* %202)
  br label %227

204:                                              ; preds = %128
  %205 = load %struct.file*, %struct.file** %5, align 8
  %206 = call i32 @process_iTXt(%struct.file* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %241

209:                                              ; preds = %204
  %210 = load %struct.file*, %struct.file** %5, align 8
  %211 = getelementptr inbounds %struct.file, %struct.file* %210, i32 0, i32 4
  %212 = call i32 @chunk_end(%struct.chunk** %211)
  %213 = load %struct.file*, %struct.file** %5, align 8
  %214 = load %struct.file*, %struct.file** %5, align 8
  %215 = getelementptr inbounds %struct.file, %struct.file* %214, i32 0, i32 3
  %216 = call i32 @file_setpos(%struct.file* %213, i32* %215)
  br label %227

217:                                              ; preds = %128
  %218 = load %struct.file*, %struct.file** %5, align 8
  %219 = call i32 @process_IDAT(%struct.file* %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  br label %241

222:                                              ; preds = %217
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 132
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  br label %227

227:                                              ; preds = %222, %209, %196
  %228 = load %struct.file*, %struct.file** %5, align 8
  %229 = call i32 @read_chunk(%struct.file* %228)
  br label %241

230:                                              ; preds = %84, %71
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.file*, %struct.file** %5, align 8
  %233 = getelementptr inbounds %struct.file, %struct.file* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.file*, %struct.file** %5, align 8
  %236 = getelementptr inbounds %struct.file, %struct.file* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  %237 = load %struct.file*, %struct.file** %5, align 8
  %238 = call i32 @getpos(%struct.file* %237)
  %239 = load %struct.file*, %struct.file** %5, align 8
  %240 = call i32 @read_chunk(%struct.file* %239)
  br label %241

241:                                              ; preds = %230, %227, %221, %208, %195, %158, %146
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @type_name(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @type_message(%struct.file*, i32, i8*) #1

declare dso_local i64 @CRITICAL(i32) #1

declare dso_local i32 @stop(%struct.file*, i32, i8*) #1

declare dso_local i64 @skip_chunk_type(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getpos(%struct.file*) #1

declare dso_local i32 @stop_invalid(%struct.file*, i8*) #1

declare dso_local i32 @setpos(%struct.chunk*) #1

declare dso_local i8* @reread_4(%struct.file*) #1

declare dso_local i8* @reread_byte(%struct.file*) #1

declare dso_local i32 @calc_image_size(%struct.file*) #1

declare dso_local i32 @process_zTXt_iCCP(%struct.file*) #1

declare dso_local i32 @chunk_end(%struct.chunk**) #1

declare dso_local i32 @file_setpos(%struct.file*, i32*) #1

declare dso_local i32 @process_iTXt(%struct.file*) #1

declare dso_local i32 @process_IDAT(%struct.file*) #1

declare dso_local i32 @read_chunk(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
