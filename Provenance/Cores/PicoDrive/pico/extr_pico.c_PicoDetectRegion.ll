; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoDetectRegion.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_pico.c_PicoDetectRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8, i8 }

@PicoRegionOverride = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PicoAutoRgnOrder = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoDetectRegion() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i8], align 1
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i8 0, i8* %4, align 1
  %9 = load i32, i32* @PicoRegionOverride, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @PicoRegionOverride, align 4
  store i32 %12, i32* %1, align 4
  br label %95

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 1), align 8
  %15 = add nsw i64 %14, 496
  %16 = inttoptr i64 %15 to i16*
  store i16* %16, i16** %5, align 8
  %17 = load i16*, i16** %5, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 0
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = shl i32 %20, 16
  %22 = load i16*, i16** %5, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 1
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %21, %25
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %91, %13
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %94

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = shl i32 %32, 3
  %34 = ashr i32 %31, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 32
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %91

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 74
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %1, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %1, align 4
  br label %90

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 85
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %1, align 4
  %51 = or i32 %50, 4
  store i32 %51, i32* %1, align 4
  br label %89

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 69
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %1, align 4
  %57 = or i32 %56, 8
  store i32 %57, i32* %1, align 4
  br label %88

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 106
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %1, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %94

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 117
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %1, align 4
  %69 = or i32 %68, 4
  store i32 %69, i32* %1, align 4
  br label %94

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = icmp eq i32 %71, 101
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = or i32 %74, 8
  store i32 %75, i32* %1, align 4
  br label %94

76:                                               ; preds = %70
  %77 = bitcast [2 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %77, i8 0, i64 2, i1 false)
  %78 = load i32, i32* %7, align 4
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  store i8 %79, i8* %80, align 1
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %8, i64 0, i64 0
  %82 = call i32 @strtol(i8* %81, i32* null, i32 16)
  %83 = load i32, i32* %1, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %1, align 4
  br label %85

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %55
  br label %89

89:                                               ; preds = %88, %49
  br label %90

90:                                               ; preds = %89, %43
  br label %91

91:                                               ; preds = %90, %39
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %27

94:                                               ; preds = %73, %67, %61, %27
  br label %95

95:                                               ; preds = %94, %11
  %96 = load i32, i32* @PicoAutoRgnOrder, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %95
  %99 = load i32, i32* @PicoAutoRgnOrder, align 4
  %100 = ashr i32 %99, 0
  %101 = and i32 %100, 15
  %102 = load i32, i32* %1, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @PicoAutoRgnOrder, align 4
  %107 = ashr i32 %106, 0
  %108 = and i32 %107, 15
  store i32 %108, i32* %1, align 4
  br label %133

109:                                              ; preds = %98
  %110 = load i32, i32* @PicoAutoRgnOrder, align 4
  %111 = ashr i32 %110, 4
  %112 = and i32 %111, 15
  %113 = load i32, i32* %1, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32, i32* @PicoAutoRgnOrder, align 4
  %118 = ashr i32 %117, 4
  %119 = and i32 %118, 15
  store i32 %119, i32* %1, align 4
  br label %132

120:                                              ; preds = %109
  %121 = load i32, i32* @PicoAutoRgnOrder, align 4
  %122 = ashr i32 %121, 8
  %123 = and i32 %122, 15
  %124 = load i32, i32* %1, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32, i32* @PicoAutoRgnOrder, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 15
  store i32 %130, i32* %1, align 4
  br label %131

131:                                              ; preds = %127, %120
  br label %132

132:                                              ; preds = %131, %116
  br label %133

133:                                              ; preds = %132, %105
  br label %134

134:                                              ; preds = %133, %95
  %135 = load i32, i32* %1, align 4
  %136 = and i32 %135, 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 192, i32* %2, align 4
  store i8 1, i8* %4, align 1
  br label %158

139:                                              ; preds = %134
  %140 = load i32, i32* %1, align 4
  %141 = and i32 %140, 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  store i32 128, i32* %2, align 4
  br label %157

144:                                              ; preds = %139
  %145 = load i32, i32* %1, align 4
  %146 = and i32 %145, 2
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 64, i32* %2, align 4
  store i8 1, i8* %4, align 1
  br label %156

149:                                              ; preds = %144
  %150 = load i32, i32* %1, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 0, i32* %2, align 4
  br label %155

154:                                              ; preds = %149
  store i32 128, i32* %2, align 4
  br label %155

155:                                              ; preds = %154, %153
  br label %156

156:                                              ; preds = %155, %148
  br label %157

157:                                              ; preds = %156, %143
  br label %158

158:                                              ; preds = %157, %138
  %159 = load i32, i32* %2, align 4
  %160 = or i32 %159, 32
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 8
  %162 = load i8, i8* %4, align 1
  store i8 %162, i8* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 1), align 1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
