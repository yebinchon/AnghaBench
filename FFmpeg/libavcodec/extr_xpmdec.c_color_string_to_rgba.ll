; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xpmdec.c_color_string_to_rgba.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xpmdec.c_color_string_to_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@color_table = common dso_local global i32 0, align 4
@color_table_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @color_string_to_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @color_string_to_rgba(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca [100 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -16777216, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @FFMAX(i32 %9, i32 0)
  %11 = call i32 @FFMIN(i32 %10, i32 99)
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 35
  br i1 %15, label %16, label %164

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @hex_char_to_number(i8 signext %26)
  %28 = shl i32 %27, 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @hex_char_to_number(i8 signext %31)
  %33 = shl i32 %32, 12
  %34 = or i32 %28, %33
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @hex_char_to_number(i8 signext %37)
  %39 = shl i32 %38, 20
  %40 = or i32 %34, %39
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %163

43:                                               ; preds = %16
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 3
  %49 = load i8, i8* %48, align 1
  %50 = call i32 @hex_char_to_number(i8 signext %49)
  %51 = shl i32 %50, 4
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @hex_char_to_number(i8 signext %54)
  %56 = shl i32 %55, 12
  %57 = or i32 %51, %56
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @hex_char_to_number(i8 signext %60)
  %62 = shl i32 %61, 20
  %63 = or i32 %57, %62
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @hex_char_to_number(i8 signext %66)
  %68 = shl i32 %67, 28
  %69 = or i32 %63, %68
  store i32 %69, i32* %6, align 4
  br label %162

70:                                               ; preds = %43
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 6
  br i1 %72, label %73, label %110

73:                                               ; preds = %70
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 5
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @hex_char_to_number(i8 signext %76)
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @hex_char_to_number(i8 signext %80)
  %82 = shl i32 %81, 4
  %83 = or i32 %77, %82
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @hex_char_to_number(i8 signext %86)
  %88 = shl i32 %87, 8
  %89 = or i32 %83, %88
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @hex_char_to_number(i8 signext %92)
  %94 = shl i32 %93, 12
  %95 = or i32 %89, %94
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @hex_char_to_number(i8 signext %98)
  %100 = shl i32 %99, 16
  %101 = or i32 %95, %100
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = call i32 @hex_char_to_number(i8 signext %104)
  %106 = shl i32 %105, 20
  %107 = or i32 %101, %106
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %161

110:                                              ; preds = %70
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %160

113:                                              ; preds = %110
  %114 = load i8*, i8** %4, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 7
  %116 = load i8, i8* %115, align 1
  %117 = call i32 @hex_char_to_number(i8 signext %116)
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 6
  %120 = load i8, i8* %119, align 1
  %121 = call i32 @hex_char_to_number(i8 signext %120)
  %122 = shl i32 %121, 4
  %123 = or i32 %117, %122
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 5
  %126 = load i8, i8* %125, align 1
  %127 = call i32 @hex_char_to_number(i8 signext %126)
  %128 = shl i32 %127, 8
  %129 = or i32 %123, %128
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @hex_char_to_number(i8 signext %132)
  %134 = shl i32 %133, 12
  %135 = or i32 %129, %134
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 3
  %138 = load i8, i8* %137, align 1
  %139 = call i32 @hex_char_to_number(i8 signext %138)
  %140 = shl i32 %139, 16
  %141 = or i32 %135, %140
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 2
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @hex_char_to_number(i8 signext %144)
  %146 = shl i32 %145, 20
  %147 = or i32 %141, %146
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @hex_char_to_number(i8 signext %150)
  %152 = shl i32 %151, 24
  %153 = or i32 %147, %152
  %154 = load i8*, i8** %4, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = call i32 @hex_char_to_number(i8 signext %156)
  %158 = shl i32 %157, 28
  %159 = or i32 %153, %158
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %113, %110
  br label %161

161:                                              ; preds = %160, %73
  br label %162

162:                                              ; preds = %161, %46
  br label %163

163:                                              ; preds = %162, %23
  br label %186

164:                                              ; preds = %2
  %165 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %166 = load i8*, i8** %4, align 8
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @strncpy(i8* %165, i8* %166, i32 %167)
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 %170
  store i8 0, i8* %171, align 1
  %172 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %173 = load i32, i32* @color_table, align 4
  %174 = load i32, i32* @color_table, align 4
  %175 = call i32 @FF_ARRAY_ELEMS(i32 %174)
  %176 = load i32, i32* @color_table_compare, align 4
  %177 = call %struct.TYPE_3__* @bsearch(i8* %172, i32 %173, i32 %175, i32 4, i32 %176)
  store %struct.TYPE_3__* %177, %struct.TYPE_3__** %7, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %179 = icmp ne %struct.TYPE_3__* %178, null
  br i1 %179, label %182, label %180

180:                                              ; preds = %164
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %3, align 4
  br label %188

182:                                              ; preds = %164
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %182, %163
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %186, %180
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @hex_char_to_number(i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_3__* @bsearch(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @FF_ARRAY_ELEMS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
