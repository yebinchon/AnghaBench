; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_rtp_decoder.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/test/extr_rtp_decoder.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@do_print_usage = common dso_local global i64 0, align 8
@read_uri = common dso_local global i64 0, align 8
@MAXIMUM_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Allocating %d bytes for the buffer failed\00", align 1
@VC_CONTAINER_IO_MODE_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Opening <%s> for read failed: %d\00", align 1
@packet_save_file = common dso_local global i64 0, align 8
@VC_CONTAINER_IO_MODE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Opening <%s> for write failed: %d\00", align 1
@packet_save_is_pktfile = common dso_local global i64 0, align 8
@VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS = common dso_local global i32 0, align 4
@MINIMUM_BUFFER_SPACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Error saving packets to file\00", align 1
@verbosity = common dso_local global i64 0, align 8
@LOWEST_VERBOSITY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Written %u bytes to file\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to decode packet\00", align 1
@ESCAPE_CHARACTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i32 1, i32* %12, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @parse_command_line(i32 %18, i8** %19)
  %21 = load i64, i64* @do_print_usage, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @read_uri, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23, %2
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @print_usage(i8* %29)
  store i32 1, i32* %6, align 4
  br label %212

31:                                               ; preds = %23
  %32 = load i64, i64* @MAXIMUM_BUFFER_SIZE, align 8
  %33 = call i64 @malloc(i64 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* @MAXIMUM_BUFFER_SIZE, align 8
  %39 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %38)
  store i32 2, i32* %6, align 4
  br label %212

40:                                               ; preds = %31
  %41 = load i64, i64* @read_uri, align 8
  %42 = load i32, i32* @VC_CONTAINER_IO_MODE_READ, align 4
  %43 = call %struct.TYPE_8__* @vc_container_io_open(i64 %41, i32 %42, i32* %10)
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %8, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = icmp ne %struct.TYPE_8__* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @read_uri, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %48)
  store i32 3, i32* %6, align 4
  br label %212

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = call i32 @increase_read_buffer_size(%struct.TYPE_8__* %51)
  %53 = load i64, i64* @packet_save_file, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load i64, i64* @packet_save_file, align 8
  %57 = load i32, i32* @VC_CONTAINER_IO_MODE_WRITE, align 4
  %58 = call %struct.TYPE_8__* @vc_container_io_open(i64 %56, i32 %57, i32* %10)
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** %9, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* @packet_save_file, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %62, i32 %63)
  store i32 4, i32* %6, align 4
  br label %212

65:                                               ; preds = %55
  %66 = load i64, i64* @packet_save_is_pktfile, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @store_u32(i32* %69, i64 1346459475)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i64 @vc_container_io_write(%struct.TYPE_8__* %71, i32* %72, i64 8)
  br label %74

74:                                               ; preds = %68, %65
  br label %75

75:                                               ; preds = %74, %50
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = load i32, i32* @VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, align 4
  %78 = call i32 @vc_container_io_control(%struct.TYPE_8__* %76, i32 %77, i32 20)
  %79 = call i32 @nb_set_nonblocking_input(i32 1)
  %80 = load i32*, i32** %7, align 8
  store i32* %80, i32** %14, align 8
  %81 = load i64, i64* @MAXIMUM_BUFFER_SIZE, align 8
  %82 = sub i64 %81, 8
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %209, %75
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %210

86:                                               ; preds = %83
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i64, i64* %13, align 8
  %91 = call i64 @vc_container_io_read(%struct.TYPE_8__* %87, i32* %89, i64 %90)
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %194

94:                                               ; preds = %86
  %95 = load i32*, i32** %14, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @store_u32(i32* %95, i64 %96)
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  store i32* %99, i32** %14, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @marker_bit_set(i32* %100, i64 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i64, i64* %11, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 %103
  store i32* %105, i32** %14, align 8
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 8
  %108 = load i64, i64* %13, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %13, align 8
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %94
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* @MINIMUM_BUFFER_SPACE, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %193

116:                                              ; preds = %112, %94
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %118 = icmp ne %struct.TYPE_8__* %117, null
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  %120 = load i64, i64* @packet_save_is_pktfile, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %119
  %123 = load i32*, i32** %14, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = ptrtoint i32* %123 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  store i64 %128, i64* %17, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load i64, i64* %17, align 8
  %132 = call i64 @vc_container_io_write(%struct.TYPE_8__* %129, i32* %130, i64 %131)
  %133 = load i64, i64* %17, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %122
  %136 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %210

137:                                              ; preds = %122
  %138 = load i64, i64* @verbosity, align 8
  %139 = load i64, i64* @LOWEST_VERBOSITY, align 8
  %140 = icmp sge i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i64, i64* %17, align 8
  %143 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %141, %137
  br label %145

145:                                              ; preds = %144, %119, %116
  %146 = load i32*, i32** %7, align 8
  store i32* %146, i32** %16, align 8
  br label %147

147:                                              ; preds = %185, %145
  %148 = load i32*, i32** %16, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = icmp ult i32* %148, %149
  br i1 %150, label %151, label %189

151:                                              ; preds = %147
  %152 = load i32*, i32** %16, align 8
  %153 = call i64 @fetch_u32(i32* %152)
  store i64 %153, i64* %11, align 8
  %154 = load i32*, i32** %16, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  store i32* %155, i32** %16, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %178

158:                                              ; preds = %151
  %159 = load i64, i64* @packet_save_is_pktfile, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %163 = load i32*, i32** %7, align 8
  %164 = load i64, i64* %11, align 8
  %165 = call i64 @vc_container_io_write(%struct.TYPE_8__* %162, i32* %163, i64 %164)
  %166 = load i64, i64* %11, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %189

170:                                              ; preds = %161
  %171 = load i64, i64* @verbosity, align 8
  %172 = load i64, i64* @LOWEST_VERBOSITY, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i64, i64* %11, align 8
  %176 = call i32 @LOG_INFO(i32* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %175)
  br label %177

177:                                              ; preds = %174, %170
  br label %178

178:                                              ; preds = %177, %158, %151
  %179 = load i32*, i32** %16, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i32 @decode_packet(i32* %179, i64 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %178
  %184 = call i32 (i32*, i8*, ...) @LOG_ERROR(i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %189

185:                                              ; preds = %178
  %186 = load i64, i64* %11, align 8
  %187 = load i32*, i32** %16, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 %186
  store i32* %188, i32** %16, align 8
  br label %147

189:                                              ; preds = %183, %168, %147
  %190 = load i32*, i32** %7, align 8
  store i32* %190, i32** %14, align 8
  %191 = load i64, i64* @MAXIMUM_BUFFER_SIZE, align 8
  %192 = sub i64 %191, 8
  store i64 %192, i64* %13, align 8
  br label %193

193:                                              ; preds = %189, %112
  br label %194

194:                                              ; preds = %193, %86
  %195 = call i64 (...) @nb_char_available()
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = call i64 (...) @nb_get_char()
  %199 = load i64, i64* @ESCAPE_CHARACTER, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 0, i32* %12, align 4
  br label %202

202:                                              ; preds = %201, %197
  br label %203

203:                                              ; preds = %202, %194
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  switch i32 %206, label %208 [
    i32 128, label %207
    i32 129, label %207
  ]

207:                                              ; preds = %203, %203
  br label %209

208:                                              ; preds = %203
  store i32 0, i32* %12, align 4
  br label %209

209:                                              ; preds = %208, %207
  br label %83

210:                                              ; preds = %135, %83
  %211 = call i32 @nb_set_nonblocking_input(i32 0)
  br label %212

212:                                              ; preds = %210, %61, %46, %37, %26
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %214 = icmp ne %struct.TYPE_8__* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %217 = call i32 @vc_container_io_close(%struct.TYPE_8__* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %220 = icmp ne %struct.TYPE_8__* %219, null
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %223 = call i32 @vc_container_io_close(%struct.TYPE_8__* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32*, i32** %7, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32*, i32** %7, align 8
  %229 = call i32 @free(i32* %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

declare dso_local i32 @parse_command_line(i32, i8**) #1

declare dso_local i32 @print_usage(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @LOG_ERROR(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @vc_container_io_open(i64, i32, i32*) #1

declare dso_local i32 @increase_read_buffer_size(%struct.TYPE_8__*) #1

declare dso_local i32 @store_u32(i32*, i64) #1

declare dso_local i64 @vc_container_io_write(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @vc_container_io_control(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @nb_set_nonblocking_input(i32) #1

declare dso_local i64 @vc_container_io_read(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i32 @marker_bit_set(i32*, i64) #1

declare dso_local i32 @LOG_INFO(i32*, i8*, i64) #1

declare dso_local i64 @fetch_u32(i32*) #1

declare dso_local i32 @decode_packet(i32*, i64) #1

declare dso_local i64 @nb_char_available(...) #1

declare dso_local i64 @nb_get_char(...) #1

declare dso_local i32 @vc_container_io_close(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
