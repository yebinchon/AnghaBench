; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_WriteBits.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_WriteBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64, i32*, i32, i64, i32 }

@oldsize = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MSG_WriteBits: bad bits %i\00", align 1
@overflows = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"can't read %d bits\0A\00", align 1
@msgHuff = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_WriteBits(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @oldsize, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* @oldsize, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %18, %21
  %23 = icmp ult i64 %22, 4
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* @qtrue, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  br label %227

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, -31
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 32
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %31, %28
  %38 = load i32, i32* @ERR_DROP, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @Com_Error(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %78

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %47
  %57 = load i32, i32* @overflows, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @overflows, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %77

60:                                               ; preds = %44
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %61, 1
  %63 = shl i32 1, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %60
  %74 = load i32, i32* @overflows, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @overflows, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %59
  br label %78

78:                                               ; preds = %77, %41
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %161

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %93, i32* %100, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 8
  store i32 %108, i32* %106, align 8
  br label %160

109:                                              ; preds = %89
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 16
  br i1 %111, label %112, label %132

112:                                              ; preds = %109
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = bitcast i32* %119 to i16*
  store i16* %120, i16** %9, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call zeroext i16 @LittleShort(i32 %121)
  %123 = load i16*, i16** %9, align 8
  store i16 %122, i16* %123, align 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 2
  store i64 %127, i64* %125, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 16
  store i32 %131, i32* %129, align 8
  br label %159

132:                                              ; preds = %109
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32* %142, i32** %10, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @LittleLong(i32 %143)
  %145 = load i32*, i32** %10, align 8
  store i32 %144, i32* %145, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 4
  store i64 %149, i64* %147, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 8
  store i32 %153, i32* %151, align 8
  br label %158

154:                                              ; preds = %132
  %155 = load i32, i32* @ERR_DROP, align 4
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @Com_Error(i32 %155, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %154, %135
  br label %159

159:                                              ; preds = %158, %112
  br label %160

160:                                              ; preds = %159, %92
  br label %227

161:                                              ; preds = %84
  %162 = load i32, i32* %6, align 4
  %163 = sub nsw i32 32, %162
  %164 = lshr i32 -1, %163
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, 7
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %161
  %171 = load i32, i32* %6, align 4
  %172 = and i32 %171, 7
  store i32 %172, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %188, %170
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %173
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 1
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 3
  %185 = call i32 @Huff_putBit(i32 %179, i32* %182, i32* %184)
  %186 = load i32, i32* %5, align 4
  %187 = ashr i32 %186, 1
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %177
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %173

191:                                              ; preds = %173
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %11, align 4
  %194 = sub nsw i32 %192, %193
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %191, %161
  %196 = load i32, i32* %6, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %195
  store i32 0, i32* %7, align 4
  br label %199

199:                                              ; preds = %214, %198
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %199
  %204 = load i32, i32* %5, align 4
  %205 = and i32 %204, 255
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 3
  %211 = call i32 @Huff_offsetTransmit(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msgHuff, i32 0, i32 0), i32 %205, i32* %208, i32* %210)
  %212 = load i32, i32* %5, align 4
  %213 = ashr i32 %212, 8
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %203
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 8
  store i32 %216, i32* %7, align 4
  br label %199

217:                                              ; preds = %199
  br label %218

218:                                              ; preds = %217, %195
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %221, 3
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  br label %227

227:                                              ; preds = %24, %218, %160
  ret void
}

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local zeroext i16 @LittleShort(i32) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @Huff_putBit(i32, i32*, i32*) #1

declare dso_local i32 @Huff_offsetTransmit(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
