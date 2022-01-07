; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cdump_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cdump_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.TYPE_4__ = type { i32* }

@i2cdump_args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Wrong read size. Only support 1,2,4\00", align 1
@i2c_port = common dso_local global i32 0, align 4
@I2C_MODE_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_RX_BUF_DISABLE = common dso_local global i32 0, align 4
@I2C_MASTER_TX_BUF_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f    0123456789abcdef\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%02x: \00", align 1
@stdout = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@READ_BIT = common dso_local global i32 0, align 4
@ACK_VAL = common dso_local global i32 0, align 4
@NACK_VAL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"XX \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_i2cdump_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_i2cdump_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [16 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @arg_parse(i32 %19, i8** %20, i8** bitcast (%struct.TYPE_6__* @i2cdump_args to i8**))
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i2cdump_args, i32 0, i32 2), align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @arg_print_errors(i32 %25, i32 %26, i8* %29)
  store i32 0, i32* %3, align 4
  br label %245

31:                                               ; preds = %2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i2cdump_args, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i2cdump_args, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i2cdump_args, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %31
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @TAG, align 4
  %58 = call i32 @ESP_LOGE(i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %245

59:                                               ; preds = %53, %50, %47
  %60 = call i32 (...) @i2c_master_driver_initialize()
  %61 = load i32, i32* @i2c_port, align 4
  %62 = load i32, i32* @I2C_MODE_MASTER, align 4
  %63 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %64 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %65 = call i32 @i2c_driver_install(i32 %61, i32 %62, i32 %63, i32 %64, i32 0)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %239, %59
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 128
  br i1 %69, label %70, label %242

70:                                               ; preds = %67
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %176, %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 16
  br i1 %75, label %76, label %180

76:                                               ; preds = %73
  %77 = load i32, i32* @stdout, align 4
  %78 = call i32 @fflush(i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  %82 = call i32 (...) @i2c_cmd_link_create()
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @i2c_master_start(i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 1
  %88 = load i32, i32* @WRITE_BIT, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ACK_CHECK_EN, align 4
  %91 = call i32 @i2c_master_write_byte(i32 %85, i32 %89, i32 %90)
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @ACK_CHECK_EN, align 4
  %95 = call i32 @i2c_master_write_byte(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @i2c_master_start(i32 %96)
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %7, align 4
  %100 = shl i32 %99, 1
  %101 = load i32, i32* @READ_BIT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @ACK_CHECK_EN, align 4
  %104 = call i32 @i2c_master_write_byte(i32 %98, i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %114

107:                                              ; preds = %76
  %108 = load i32, i32* %14, align 4
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* @ACK_VAL, align 4
  %113 = call i32 @i2c_master_read(i32 %108, i32* %109, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %76
  %115 = load i32, i32* %14, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = getelementptr inbounds i32, i32* %119, i64 -1
  %121 = load i32, i32* @NACK_VAL, align 4
  %122 = call i32 @i2c_master_read_byte(i32 %115, i32* %120, i32 %121)
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @i2c_master_stop(i32 %123)
  %125 = load i32, i32* @i2c_port, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @portTICK_RATE_MS, align 4
  %128 = sdiv i32 50, %127
  %129 = call i64 @i2c_master_cmd_begin(i32 %125, i32 %126, i32 %128)
  store i64 %129, i64* %15, align 8
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @i2c_cmd_link_delete(i32 %130)
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* @ESP_OK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %114
  store i32 0, i32* %16, align 4
  br label %136

136:                                              ; preds = %155, %135
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %158

140:                                              ; preds = %136
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %140
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %136

158:                                              ; preds = %136
  br label %175

159:                                              ; preds = %114
  store i32 0, i32* %17, align 4
  br label %160

160:                                              ; preds = %171, %159
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %160
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %169
  store i32 -1, i32* %170, align 4
  br label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %160

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %158
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %13, align 4
  br label %73

180:                                              ; preds = %73
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %182

182:                                              ; preds = %234, %180
  %183 = load i32, i32* %18, align 4
  %184 = icmp slt i32 %183, 16
  br i1 %184, label %185, label %237

185:                                              ; preds = %182
  %186 = load i32, i32* %18, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %185
  %194 = load i32, i32* %18, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 255
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 255
  %206 = icmp eq i32 %205, 255
  br i1 %206, label %207, label %209

207:                                              ; preds = %200, %193
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %233

209:                                              ; preds = %200
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 255
  %215 = icmp slt i32 %214, 32
  br i1 %215, label %223, label %216

216:                                              ; preds = %209
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 255
  %222 = icmp sge i32 %221, 127
  br i1 %222, label %223, label %225

223:                                              ; preds = %216, %209
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %232

225:                                              ; preds = %216
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 255
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %230)
  br label %232

232:                                              ; preds = %225, %223
  br label %233

233:                                              ; preds = %232, %207
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %18, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %18, align 4
  br label %182

237:                                              ; preds = %182
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 16
  store i32 %241, i32* %12, align 4
  br label %67

242:                                              ; preds = %67
  %243 = load i32, i32* @i2c_port, align 4
  %244 = call i32 @i2c_driver_delete(i32 %243)
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %242, %56, %24
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @i2c_master_driver_initialize(...) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_read(i32, i32*, i32, i32) #1

declare dso_local i32 @i2c_master_read_byte(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i64 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
