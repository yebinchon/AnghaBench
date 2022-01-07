; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pfr/extr_pfrsbit.c_pfr_lookup_bitmap_data.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pfr/extr_pfrsbit.c_pfr_lookup_bitmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PFR_BITMAP_2BYTE_CHARCODE = common dso_local global i32 0, align 4
@PFR_BITMAP_2BYTE_SIZE = common dso_local global i32 0, align 4
@PFR_BITMAP_3BYTE_OFFSET = common dso_local global i32 0, align 4
@PFR_BITMAP_CHARCODES_VALIDATED = common dso_local global i32 0, align 4
@PFR_BITMAP_VALID_CHARCODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [126 x i8] c"pfr_lookup_bitmap_data: number of bitmap records too large,\0A                        thus ignoring all bitmaps in this strike\0A\00", align 1
@.str.1 = private unnamed_addr constant [121 x i8] c"pfr_lookup_bitmap_data: bitmap records are not sorted,\0A                        thus ignoring all bitmaps in this strike\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32, i8**, i8**)* @pfr_lookup_bitmap_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfr_lookup_bitmap_data(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i8** %5, i8** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  store i8** %6, i8*** %14, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PFR_BITMAP_2BYTE_CHARCODE, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @FT_BOOL(i32 %29)
  store i64 %30, i64* %18, align 8
  store i32 4, i32* %17, align 4
  %31 = load i64, i64* %18, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %7
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %33, %7
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PFR_BITMAP_2BYTE_SIZE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %42, %36
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PFR_BITMAP_3BYTE_OFFSET, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %51, %45
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PFR_BITMAP_CHARCODES_VALIDATED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %120, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @PFR_BITMAP_VALID_CHARCODES, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  store i32 -1, i32* %23, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %17, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32* %70, i32** %21, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ugt i32* %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %60
  %75 = call i32 @FT_TRACE0(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @PFR_BITMAP_VALID_CHARCODES, align 4
  %77 = xor i32 %76, -1
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %115

81:                                               ; preds = %60
  %82 = load i32*, i32** %8, align 8
  store i32* %82, i32** %20, align 8
  br label %83

83:                                               ; preds = %109, %81
  %84 = load i32*, i32** %20, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = icmp ult i32* %84, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %83
  %88 = load i64, i64* %18, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %20, align 8
  %92 = call i32 @FT_PEEK_USHORT(i32* %91)
  store i32 %92, i32* %22, align 4
  br label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %20, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %22, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %22, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = call i32 @FT_TRACE0(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @PFR_BITMAP_VALID_CHARCODES, align 4
  %103 = xor i32 %102, -1
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %114

107:                                              ; preds = %96
  %108 = load i32, i32* %22, align 4
  store i32 %108, i32* %23, align 4
  br label %109

109:                                              ; preds = %107
  %110 = load i32, i32* %17, align 4
  %111 = load i32*, i32** %20, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %20, align 8
  br label %83

114:                                              ; preds = %100, %83
  br label %115

115:                                              ; preds = %114, %74
  %116 = load i32, i32* @PFR_BITMAP_CHARCODES_VALIDATED, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %115, %54
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @PFR_BITMAP_VALID_CHARCODES, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %120
  br label %171

127:                                              ; preds = %120
  store i32 0, i32* %15, align 4
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %16, align 4
  br label %129

129:                                              ; preds = %169, %127
  %130 = load i32, i32* %15, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %170

133:                                              ; preds = %129
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  %137 = ashr i32 %136, 1
  store i32 %137, i32* %24, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %17, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  store i32* %143, i32** %19, align 8
  %144 = load i64, i64* %18, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %133
  %147 = load i32*, i32** %19, align 8
  %148 = call i8* @PFR_NEXT_USHORT(i32* %147)
  %149 = ptrtoint i8* %148 to i32
  store i32 %149, i32* %25, align 4
  br label %154

150:                                              ; preds = %133
  %151 = load i32*, i32** %19, align 8
  %152 = call i8* @PFR_NEXT_BYTE(i32* %151)
  %153 = ptrtoint i8* %152 to i32
  store i32 %153, i32* %25, align 4
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %25, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* %24, align 4
  store i32 %159, i32* %16, align 4
  br label %169

160:                                              ; preds = %154
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %25, align 4
  %163 = icmp sgt i32 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32, i32* %24, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %168

167:                                              ; preds = %160
  br label %174

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %168, %158
  br label %129

170:                                              ; preds = %129
  br label %171

171:                                              ; preds = %170, %126
  %172 = load i8**, i8*** %14, align 8
  store i8* null, i8** %172, align 8
  %173 = load i8**, i8*** %13, align 8
  store i8* null, i8** %173, align 8
  br label %202

174:                                              ; preds = %167
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @PFR_BITMAP_2BYTE_SIZE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32*, i32** %19, align 8
  %182 = call i8* @PFR_NEXT_USHORT(i32* %181)
  %183 = load i8**, i8*** %14, align 8
  store i8* %182, i8** %183, align 8
  br label %188

184:                                              ; preds = %174
  %185 = load i32*, i32** %19, align 8
  %186 = call i8* @PFR_NEXT_BYTE(i32* %185)
  %187 = load i8**, i8*** %14, align 8
  store i8* %186, i8** %187, align 8
  br label %188

188:                                              ; preds = %184, %180
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @PFR_BITMAP_3BYTE_OFFSET, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load i32*, i32** %19, align 8
  %196 = call i8* @PFR_NEXT_ULONG(i32* %195)
  %197 = load i8**, i8*** %13, align 8
  store i8* %196, i8** %197, align 8
  br label %202

198:                                              ; preds = %188
  %199 = load i32*, i32** %19, align 8
  %200 = call i8* @PFR_NEXT_USHORT(i32* %199)
  %201 = load i8**, i8*** %13, align 8
  store i8* %200, i8** %201, align 8
  br label %202

202:                                              ; preds = %171, %198, %194
  ret void
}

declare dso_local i64 @FT_BOOL(i32) #1

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i32 @FT_PEEK_USHORT(i32*) #1

declare dso_local i8* @PFR_NEXT_USHORT(i32*) #1

declare dso_local i8* @PFR_NEXT_BYTE(i32*) #1

declare dso_local i8* @PFR_NEXT_ULONG(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
