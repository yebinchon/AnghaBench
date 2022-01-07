; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_golomb.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_golomb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE = common dso_local global i32 0, align 4
@COUNT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"get_ue_golomb: expected %d, got %d. bits: %7x\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"get_ue_golomb_long: expected %d, got %d. bits: %8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"get_se_golomb: expected %d, got %d. bits: %7x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* @SIZE, align 4
  %16 = call i32* @av_malloc(i32 %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  store i32 2, i32* %1, align 4
  br label %217

20:                                               ; preds = %0
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @SIZE, align 4
  %23 = call i32 @init_put_bits(i32* %5, i32* %21, i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %31, %20
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @set_ue_golomb(i32* %5, i32 %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %24

34:                                               ; preds = %24
  %35 = call i32 @flush_put_bits(i32* %5)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* @SIZE, align 4
  %38 = mul nsw i32 8, %37
  %39 = call i32 @init_get_bits(i32* %6, i32* %36, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %57, %34
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @COUNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = call i32 @show_bits(i32* %6, i32 25)
  store i32 %45, i32* %8, align 4
  %46 = call i32 @get_ue_golomb(i32* %6)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %50, %44
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @SIZE, align 4
  %63 = call i32 @init_put_bits(i32* %5, i32* %61, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %75, %60
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @COUNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %2, align 4
  %70 = shl i32 %69, 3
  %71 = load i32, i32* %2, align 4
  %72 = and i32 %71, 7
  %73 = or i32 %70, %72
  %74 = call i32 @set_ue_golomb(i32* %5, i32 %73)
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %64

78:                                               ; preds = %64
  %79 = call i32 @flush_put_bits(i32* %5)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @SIZE, align 4
  %82 = mul nsw i32 8, %81
  %83 = call i32 @init_get_bits(i32* %6, i32* %80, i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %109, %78
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @COUNT, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = call i32 @show_bits_long(i32* %6, i32 32)
  store i32 %89, i32* %10, align 4
  %90 = call i32 @get_ue_golomb_long(i32* %6)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %2, align 4
  %93 = shl i32 %92, 3
  %94 = load i32, i32* %2, align 4
  %95 = and i32 %94, 7
  %96 = or i32 %93, %95
  %97 = icmp ne i32 %91, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load i32, i32* @stderr, align 4
  %100 = load i32, i32* %2, align 4
  %101 = shl i32 %100, 3
  %102 = load i32, i32* %2, align 4
  %103 = and i32 %102, 7
  %104 = or i32 %101, %103
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @fprintf(i32 %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105, i32 %106)
  store i32 1, i32* %3, align 4
  br label %108

108:                                              ; preds = %98, %88
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %84

112:                                              ; preds = %84
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* @SIZE, align 4
  %115 = call i32 @init_put_bits(i32* %5, i32* %113, i32 %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %127, %112
  %117 = load i32, i32* %2, align 4
  %118 = load i32, i32* @COUNT, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32, i32* %2, align 4
  %122 = shl i32 %121, 4
  %123 = load i32, i32* %2, align 4
  %124 = and i32 %123, 15
  %125 = or i32 %122, %124
  %126 = call i32 @set_ue_golomb_long(i32* %5, i32 %125)
  br label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %2, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %2, align 4
  br label %116

130:                                              ; preds = %116
  %131 = call i32 @flush_put_bits(i32* %5)
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @SIZE, align 4
  %134 = mul nsw i32 8, %133
  %135 = call i32 @init_get_bits(i32* %6, i32* %132, i32 %134)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %161, %130
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* @COUNT, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %164

140:                                              ; preds = %136
  %141 = call i32 @show_bits_long(i32* %6, i32 32)
  store i32 %141, i32* %12, align 4
  %142 = call i32 @get_ue_golomb_long(i32* %6)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %2, align 4
  %145 = shl i32 %144, 4
  %146 = load i32, i32* %2, align 4
  %147 = and i32 %146, 15
  %148 = or i32 %145, %147
  %149 = icmp ne i32 %143, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %140
  %151 = load i32, i32* @stderr, align 4
  %152 = load i32, i32* %2, align 4
  %153 = shl i32 %152, 4
  %154 = load i32, i32* %2, align 4
  %155 = and i32 %154, 15
  %156 = or i32 %153, %155
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %157, i32 %158)
  store i32 1, i32* %3, align 4
  br label %160

160:                                              ; preds = %150, %140
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %2, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %2, align 4
  br label %136

164:                                              ; preds = %136
  %165 = load i32*, i32** %4, align 8
  %166 = load i32, i32* @SIZE, align 4
  %167 = call i32 @init_put_bits(i32* %5, i32* %165, i32 %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %178, %164
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* @COUNT, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @COUNT, align 4
  %175 = sdiv i32 %174, 2
  %176 = sub nsw i32 %173, %175
  %177 = call i32 @set_se_golomb(i32* %5, i32 %176)
  br label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %2, align 4
  br label %168

181:                                              ; preds = %168
  %182 = call i32 @flush_put_bits(i32* %5)
  %183 = load i32*, i32** %4, align 8
  %184 = load i32, i32* @SIZE, align 4
  %185 = mul nsw i32 8, %184
  %186 = call i32 @init_get_bits(i32* %6, i32* %183, i32 %185)
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %210, %181
  %188 = load i32, i32* %2, align 4
  %189 = load i32, i32* @COUNT, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %187
  %192 = call i32 @show_bits(i32* %6, i32 25)
  store i32 %192, i32* %14, align 4
  %193 = call i32 @get_se_golomb(i32* %6)
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %2, align 4
  %196 = load i32, i32* @COUNT, align 4
  %197 = sdiv i32 %196, 2
  %198 = sub nsw i32 %195, %197
  %199 = icmp ne i32 %194, %198
  br i1 %199, label %200, label %209

200:                                              ; preds = %191
  %201 = load i32, i32* @stderr, align 4
  %202 = load i32, i32* %2, align 4
  %203 = load i32, i32* @COUNT, align 4
  %204 = sdiv i32 %203, 2
  %205 = sub nsw i32 %202, %204
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @fprintf(i32 %201, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %205, i32 %206, i32 %207)
  store i32 1, i32* %3, align 4
  br label %209

209:                                              ; preds = %200, %191
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %2, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %2, align 4
  br label %187

213:                                              ; preds = %187
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @av_free(i32* %214)
  %216 = load i32, i32* %3, align 4
  store i32 %216, i32* %1, align 4
  br label %217

217:                                              ; preds = %213, %19
  %218 = load i32, i32* %1, align 4
  ret i32 %218
}

declare dso_local i32* @av_malloc(i32) #1

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @set_ue_golomb(i32*, i32) #1

declare dso_local i32 @flush_put_bits(i32*) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @show_bits(i32*, i32) #1

declare dso_local i32 @get_ue_golomb(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @show_bits_long(i32*, i32) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @set_ue_golomb_long(i32*, i32) #1

declare dso_local i32 @set_se_golomb(i32*, i32) #1

declare dso_local i32 @get_se_golomb(i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
