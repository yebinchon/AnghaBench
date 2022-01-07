; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_verify_utf8_sequence.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_verify_utf8_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @verify_utf8_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_utf8_sequence(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = call i32 @num_bytes_in_utf8_sequence(i8 zeroext %9)
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %138

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @IS_CONT(i8 zeroext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 31
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 6
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %41, 63
  %43 = or i32 %37, %42
  store i32 %43, i32* %6, align 4
  br label %137

44:                                               ; preds = %24, %20
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @IS_CONT(i8 zeroext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %48
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = call i64 @IS_CONT(i8 zeroext %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %66, 6
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 63
  %73 = or i32 %67, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = shl i32 %74, 6
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = and i32 %79, 63
  %81 = or i32 %75, %80
  store i32 %81, i32* %6, align 4
  br label %136

82:                                               ; preds = %54, %48, %44
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %134

86:                                               ; preds = %82
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @IS_CONT(i8 zeroext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %86
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @IS_CONT(i8 zeroext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %92
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @IS_CONT(i8 zeroext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %134

104:                                              ; preds = %98
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 7
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = shl i32 %110, 6
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = and i32 %115, 63
  %117 = or i32 %111, %116
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = shl i32 %118, 6
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = and i32 %123, 63
  %125 = or i32 %119, %124
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = shl i32 %126, 6
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 3
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 63
  %133 = or i32 %127, %132
  store i32 %133, i32* %6, align 4
  br label %135

134:                                              ; preds = %98, %92, %86, %82
  store i32 0, i32* %3, align 4
  br label %172

135:                                              ; preds = %104
  br label %136

136:                                              ; preds = %135, %60
  br label %137

137:                                              ; preds = %136, %30
  br label %138

138:                                              ; preds = %137, %15
  %139 = load i32, i32* %6, align 4
  %140 = icmp ult i32 %139, 128
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32*, i32** %5, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %159, label %145

145:                                              ; preds = %141, %138
  %146 = load i32, i32* %6, align 4
  %147 = icmp ult i32 %146, 2048
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 2
  br i1 %151, label %159, label %152

152:                                              ; preds = %148, %145
  %153 = load i32, i32* %6, align 4
  %154 = icmp ult i32 %153, 65536
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %157, 3
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %148, %141
  store i32 0, i32* %3, align 4
  br label %172

160:                                              ; preds = %155, %152
  %161 = load i32, i32* %6, align 4
  %162 = icmp ugt i32 %161, 1114111
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %172

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = icmp uge i32 %165, 55296
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp ule i32 %168, 57343
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %172

171:                                              ; preds = %167, %164
  store i32 1, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %170, %163, %159, %134
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @num_bytes_in_utf8_sequence(i8 zeroext) #1

declare dso_local i64 @IS_CONT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
