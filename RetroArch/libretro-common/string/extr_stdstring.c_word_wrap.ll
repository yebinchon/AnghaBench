; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/string/extr_stdstring.c_word_wrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/string/extr_stdstring.c_word_wrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @word_wrap(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %24

24:                                               ; preds = %181, %5
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %182

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** %7, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %38

38:                                               ; preds = %105, %28
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ule i32 %39, %40
  br i1 %41, label %42, label %108

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %7, align 8
  store i8* %52, i8** %6, align 8
  br label %188

53:                                               ; preds = %42
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = call i8* @utf8skip(i8* %57, i32 1)
  store i8* %58, i8** %17, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = ptrtoint i8* %59 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %53
  %71 = load i32, i32* %18, align 4
  %72 = sub i32 %71, 1
  %73 = load i32, i32* %15, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %70, %53
  br label %76

76:                                               ; preds = %90, %75
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %81, i8* %85, align 1
  %86 = load i32, i32* %18, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %18, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %76, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %19, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %104

104:                                              ; preds = %101, %93
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %15, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %15, align 4
  br label %38

108:                                              ; preds = %38
  %109 = load i8*, i8** %8, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 32
  br i1 %115, label %116, label %133

116:                                              ; preds = %108
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119, %116
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 10, i8* %127, align 1
  %128 = load i32, i32* %12, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %123, %119
  br label %181

133:                                              ; preds = %108
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %20, align 4
  br label %135

135:                                              ; preds = %163, %133
  %136 = load i32, i32* %20, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %135
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 32
  br i1 %145, label %153, label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp uge i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %149, %138
  br label %163

154:                                              ; preds = %149, %146
  %155 = load i8*, i8** %7, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 10, i8* %158, align 1
  %159 = load i32, i32* %20, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %14, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %166

163:                                              ; preds = %153
  %164 = load i32, i32* %20, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %20, align 4
  br label %135

166:                                              ; preds = %154, %135
  %167 = load i8*, i8** %7, align 8
  %168 = load i32, i32* %12, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8*, i8** %7, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = icmp eq i64 %174, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %166
  %179 = load i8*, i8** %7, align 8
  store i8* %179, i8** %6, align 8
  br label %188

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %132
  br label %24

182:                                              ; preds = %24
  %183 = load i8*, i8** %7, align 8
  %184 = load i32, i32* %12, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 0, i8* %186, align 1
  %187 = load i8*, i8** %7, align 8
  store i8* %187, i8** %6, align 8
  br label %188

188:                                              ; preds = %182, %178, %47
  %189 = load i8*, i8** %6, align 8
  ret i8* %189
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @utf8skip(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
