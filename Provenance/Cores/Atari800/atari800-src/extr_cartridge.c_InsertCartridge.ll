; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_InsertCartridge.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cartridge.c_InsertCartridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@CARTRIDGE_CANT_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error reading cartridge.\0A\00", align 1
@CARTRIDGE_NONE = common dso_local global i32 0, align 4
@CARTRIDGE_LAST_SUPPORTED = common dso_local global i32 0, align 4
@CARTRIDGE_kb = common dso_local global i32* null, align 8
@CARTRIDGE_UNKNOWN = common dso_local global i32 0, align 4
@CARTRIDGE_BAD_FORMAT = common dso_local global i32 0, align 4
@CARTRIDGE_BAD_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @InsertCartridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InsertCartridge(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @CARTRIDGE_CANT_OPEN, align 4
  store i32 %17, i32* %3, align 4
  br label %239

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @Util_flen(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @Util_rewind(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcpy(i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 1023
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %114

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @Util_malloc(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @fread(i8* %46, i32 1, i32 %47, i32* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = call i32 @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %38
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i32, i32* @CARTRIDGE_NONE, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 10
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %94, %54
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @CARTRIDGE_LAST_SUPPORTED, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i32*, i32** @CARTRIDGE_kb, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CARTRIDGE_NONE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %92

87:                                               ; preds = %77
  %88 = load i32, i32* @CARTRIDGE_UNKNOWN, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %239

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %65

97:                                               ; preds = %65
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @CARTRIDGE_NONE, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = call i32 @InitCartridge(%struct.TYPE_4__* %104)
  store i32 0, i32* %3, align 4
  br label %239

106:                                              ; preds = %97
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @free(i8* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i8* null, i8** %112, align 8
  %113 = load i32, i32* @CARTRIDGE_BAD_FORMAT, align 4
  store i32 %113, i32* %3, align 4
  br label %239

114:                                              ; preds = %34
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @fread(i8* %115, i32 1, i32 16, i32* %116)
  %118 = icmp slt i32 %117, 16
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %119, %114
  %122 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %123 = load i8, i8* %122, align 16
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 67
  br i1 %125, label %126, label %235

126:                                              ; preds = %121
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 65
  br i1 %130, label %131, label %235

131:                                              ; preds = %126
  %132 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 2
  %133 = load i8, i8* %132, align 2
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 82
  br i1 %135, label %136, label %235

136:                                              ; preds = %131
  %137 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 3
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 84
  br i1 %140, label %141, label %235

141:                                              ; preds = %136
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 4
  %143 = load i8, i8* %142, align 4
  %144 = sext i8 %143 to i32
  %145 = shl i32 %144, 24
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 5
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = shl i32 %148, 16
  %150 = or i32 %145, %149
  %151 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 6
  %152 = load i8, i8* %151, align 2
  %153 = sext i8 %152 to i32
  %154 = shl i32 %153, 8
  %155 = or i32 %150, %154
  %156 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 7
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = or i32 %155, %158
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp sge i32 %160, 1
  br i1 %161, label %162, label %234

162:                                              ; preds = %141
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @CARTRIDGE_LAST_SUPPORTED, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %234

166:                                              ; preds = %162
  %167 = load i32*, i32** @CARTRIDGE_kb, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 10
  store i32 %172, i32* %7, align 4
  %173 = load i32*, i32** @CARTRIDGE_kb, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i64 @Util_malloc(i32 %180)
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32*, i32** %6, align 8
  %190 = call i32 @fread(i8* %187, i32 1, i32 %188, i32* %189)
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %166
  %194 = call i32 @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %166
  %196 = load i32*, i32** %6, align 8
  %197 = call i32 @fclose(i32* %196)
  %198 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 8
  %199 = load i8, i8* %198, align 8
  %200 = sext i8 %199 to i32
  %201 = shl i32 %200, 24
  %202 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 9
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = shl i32 %204, 16
  %206 = or i32 %201, %205
  %207 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 10
  %208 = load i8, i8* %207, align 2
  %209 = sext i8 %208 to i32
  %210 = shl i32 %209, 8
  %211 = or i32 %206, %210
  %212 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 11
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = or i32 %211, %214
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @CARTRIDGE_Checksum(i8* %222, i32 %223)
  %225 = icmp eq i32 %219, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %195
  br label %229

227:                                              ; preds = %195
  %228 = load i32, i32* @CARTRIDGE_BAD_CHECKSUM, align 4
  br label %229

229:                                              ; preds = %227, %226
  %230 = phi i32 [ 0, %226 ], [ %228, %227 ]
  store i32 %230, i32* %11, align 4
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %232 = call i32 @InitCartridge(%struct.TYPE_4__* %231)
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %3, align 4
  br label %239

234:                                              ; preds = %162, %141
  br label %235

235:                                              ; preds = %234, %136, %131, %126, %121
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @fclose(i32* %236)
  %238 = load i32, i32* @CARTRIDGE_BAD_FORMAT, align 4
  store i32 %238, i32* %3, align 4
  br label %239

239:                                              ; preds = %235, %229, %106, %103, %87, %16
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Util_flen(i32*) #1

declare dso_local i32 @Util_rewind(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @Util_malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @InitCartridge(%struct.TYPE_4__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CARTRIDGE_Checksum(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
