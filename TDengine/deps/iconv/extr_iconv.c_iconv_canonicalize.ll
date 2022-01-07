; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_iconv.c_iconv_canonicalize.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_iconv.c_iconv_canonicalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias = type { i32 }

@MAX_WORD_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"//TRANSLIT\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"//IGNORE\00", align 1
@stringpool = common dso_local global i8* null, align 8
@stringpool2 = common dso_local global i8* null, align 8
@ei_local_char = common dso_local global i32 0, align 4
@ei_local_wchar_t = common dso_local global i32 0, align 4
@all_canonical = common dso_local global i32* null, align 8
@ei_iso8859_1 = common dso_local global i32 0, align 4
@ei_ucs2internal = common dso_local global i32 0, align 4
@ei_ucs4internal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @iconv_canonicalize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alias*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i32, i32* @MAX_WORD_LENGTH, align 4
  %16 = add nsw i32 %15, 10
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** %4, align 8
  br label %22

22:                                               ; preds = %142, %110, %1
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %7, align 8
  store i8* %20, i8** %8, align 8
  %24 = load i32, i32* @MAX_WORD_LENGTH, align 4
  %25 = add nsw i32 %24, 10
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %60, %22
  %28 = load i8*, i8** %7, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %13, align 1
  %30 = load i8, i8* %13, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp sge i32 %31, 128
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %163

34:                                               ; preds = %27
  %35 = load i8, i8* %13, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sge i32 %36, 97
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load i8, i8* %13, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sle i32 %40, 122
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8, i8* %13, align 1
  %44 = zext i8 %43 to i32
  %45 = sub nsw i32 %44, 32
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %13, align 1
  br label %47

47:                                               ; preds = %42, %38, %34
  %48 = load i8, i8* %13, align 1
  %49 = load i8*, i8** %8, align 8
  store i8 %48, i8* %49, align 1
  %50 = load i8, i8* %13, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %65

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, -1
  store i32 %56, i32* %10, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %163

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  br label %27

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %92, %77, %65
  %67 = load i8*, i8** %8, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = ptrtoint i8* %20 to i64
  %70 = sub i64 %68, %69
  %71 = icmp sge i64 %70, 10
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 -10
  %75 = call i64 @memcmp(i8* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 -10
  store i8* %79, i8** %8, align 8
  %80 = load i8*, i8** %8, align 8
  store i8 0, i8* %80, align 1
  br label %66

81:                                               ; preds = %72, %66
  %82 = load i8*, i8** %8, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = ptrtoint i8* %20 to i64
  %85 = sub i64 %83, %84
  %86 = icmp sge i64 %85, 8
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load i8*, i8** %8, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 -8
  %90 = call i64 @memcmp(i8* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 -8
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  store i8 0, i8* %95, align 1
  br label %66

96:                                               ; preds = %87, %81
  br label %97

97:                                               ; preds = %96
  %98 = getelementptr inbounds i8, i8* %20, i64 0
  %99 = load i8, i8* %98, align 16
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %97
  %103 = call i8* (...) @locale_charset()
  store i8* %103, i8** %4, align 8
  %104 = load i8*, i8** %4, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %163

110:                                              ; preds = %102
  br label %22

111:                                              ; preds = %97
  %112 = load i8*, i8** @stringpool, align 8
  store i8* %112, i8** %12, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = ptrtoint i8* %113 to i64
  %115 = ptrtoint i8* %20 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = call %struct.alias* @aliases_lookup(i8* %20, i32 %117)
  store %struct.alias* %118, %struct.alias** %9, align 8
  %119 = load %struct.alias*, %struct.alias** %9, align 8
  %120 = icmp eq %struct.alias* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load i8*, i8** @stringpool2, align 8
  store i8* %122, i8** %12, align 8
  %123 = call %struct.alias* @aliases2_lookup(i8* %20)
  store %struct.alias* %123, %struct.alias** %9, align 8
  %124 = load %struct.alias*, %struct.alias** %9, align 8
  %125 = icmp eq %struct.alias* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %163

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %111
  %129 = load %struct.alias*, %struct.alias** %9, align 8
  %130 = getelementptr inbounds %struct.alias, %struct.alias* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ei_local_char, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %128
  %135 = call i8* (...) @locale_charset()
  store i8* %135, i8** %4, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %163

142:                                              ; preds = %134
  br label %22

143:                                              ; preds = %128
  %144 = load %struct.alias*, %struct.alias** %9, align 8
  %145 = getelementptr inbounds %struct.alias, %struct.alias* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ei_local_wchar_t, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %143
  %151 = load %struct.alias*, %struct.alias** %9, align 8
  %152 = getelementptr inbounds %struct.alias, %struct.alias* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %11, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i32*, i32** @all_canonical, align 8
  %156 = load i32, i32* %11, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  store i8* %162, i8** %2, align 8
  store i32 1, i32* %14, align 4
  br label %165

163:                                              ; preds = %141, %126, %109, %58, %33
  %164 = load i8*, i8** %3, align 8
  store i8* %164, i8** %2, align 8
  store i32 1, i32* %14, align 4
  br label %165

165:                                              ; preds = %163, %154
  %166 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i8*, i8** %2, align 8
  ret i8* %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i8* @locale_charset(...) #2

declare dso_local %struct.alias* @aliases_lookup(i8*, i32) #2

declare dso_local %struct.alias* @aliases2_lookup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
