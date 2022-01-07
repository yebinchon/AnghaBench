; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_ReadBits.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_msg.c_MSG_ReadBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i64, i32, i64 }

@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"can't read %d bits\0A\00", align 1
@msgHuff = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSG_ReadBits(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  %17 = load i64, i64* @qtrue, align 8
  store i64 %17, i64* %7, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @qfalse, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 8
  store i32 %44, i32* %42, align 8
  br label %96

45:                                               ; preds = %25
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = bitcast i32* %55 to i16*
  store i16* %56, i16** %10, align 8
  %57 = load i16*, i16** %10, align 8
  %58 = load i16, i16* %57, align 2
  %59 = call i32 @LittleShort(i16 zeroext %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 2
  store i64 %63, i64* %61, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 16
  store i32 %67, i32* %65, align 8
  br label %95

68:                                               ; preds = %45
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LittleLong(i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %83, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 32
  store i32 %89, i32* %87, align 8
  br label %94

90:                                               ; preds = %68
  %91 = load i32, i32* @ERR_DROP, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @Com_Error(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %71
  br label %95

95:                                               ; preds = %94, %48
  br label %96

96:                                               ; preds = %95, %28
  br label %162

97:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %98 = load i32, i32* %4, align 4
  %99 = and i32 %98, 7
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 7
  store i32 %103, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %119, %101
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = call i32 @Huff_getBit(i32* %111, i32* %113)
  %115 = load i32, i32* %8, align 4
  %116 = shl i32 %114, %115
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %104

122:                                              ; preds = %104
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %122, %97
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %153

129:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %149, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %130
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msgHuff, i32 0, i32 0, i32 0), align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = call i32 @Huff_offsetReceive(i32 %135, i32* %6, i32* %138, i32* %140)
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %143, %144
  %146 = shl i32 %142, %145
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %134
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 8
  store i32 %151, i32* %8, align 4
  br label %130

152:                                              ; preds = %130
  br label %153

153:                                              ; preds = %152, %126
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = ashr i32 %156, 3
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %153, %96
  %163 = load i64, i64* %7, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %4, align 4
  %168 = sub nsw i32 %167, 1
  %169 = shl i32 1, %168
  %170 = and i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %165
  %173 = load i32, i32* %4, align 4
  %174 = shl i32 1, %173
  %175 = sub nsw i32 %174, 1
  %176 = xor i32 -1, %175
  %177 = load i32, i32* %5, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %5, align 4
  br label %179

179:                                              ; preds = %172, %165
  br label %180

180:                                              ; preds = %179, %162
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @LittleShort(i16 zeroext) #1

declare dso_local i32 @LittleLong(i32) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Huff_getBit(i32*, i32*) #1

declare dso_local i32 @Huff_offsetReceive(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
