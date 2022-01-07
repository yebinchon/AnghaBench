; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_apinames.c_main.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/tools/extr_apinames.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OUTPUT_LIST = common dso_local global i32 0, align 4
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not open '%s' for writing\0A\00", align 1
@OUTPUT_WINDOWS_DEF = common dso_local global i32 0, align 4
@OUTPUT_BORLAND_DEF = common dso_local global i32 0, align 4
@OUTPUT_WATCOM_LBC = common dso_local global i32 0, align 4
@OUTPUT_NETWARE_IMP = common dso_local global i32 0, align 4
@OUTPUT_GNU_VERMAP = common dso_local global i32 0, align 4
@stdin = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"unable to open '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"opening '%s'\0A\00", align 1
@num_names = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"could not find exported functions !!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @OUTPUT_LIST, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** @stdout, align 8
  store i32* %14, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @usage()
  br label %19

19:                                               ; preds = %17, %2
  br label %20

20:                                               ; preds = %122, %19
  %21 = load i32, i32* %4, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 45
  br label %31

31:                                               ; preds = %23, %20
  %32 = phi i1 [ false, %20 ], [ %30, %23 ]
  br i1 %32, label %33, label %127

33:                                               ; preds = %31
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %120 [
    i32 118, label %41
    i32 111, label %42
    i32 100, label %77
    i32 119, label %101
    i32 0, label %119
  ]

41:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %122

42:                                               ; preds = %33
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 2
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @usage()
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %11, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %4, align 4
  br label %64

61:                                               ; preds = %42
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %61, %53
  %65 = load i8*, i8** %11, align 8
  %66 = call i32* @fopen(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %66, i32** %9, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %73)
  %75 = call i32 @exit(i32 3) #3
  unreachable

76:                                               ; preds = %64
  br label %122

77:                                               ; preds = %33
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (...) @usage()
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %11, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  br label %99

96:                                               ; preds = %77
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  store i8* %98, i8** %11, align 8
  br label %99

99:                                               ; preds = %96, %88
  %100 = load i8*, i8** %11, align 8
  store i8* %100, i8** %10, align 8
  br label %122

101:                                              ; preds = %33
  %102 = load i32, i32* @OUTPUT_WINDOWS_DEF, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  switch i32 %106, label %116 [
    i32 66, label %107
    i32 87, label %109
    i32 78, label %111
    i32 76, label %113
    i32 0, label %115
  ]

107:                                              ; preds = %101
  %108 = load i32, i32* @OUTPUT_BORLAND_DEF, align 4
  store i32 %108, i32* %8, align 4
  br label %118

109:                                              ; preds = %101
  %110 = load i32, i32* @OUTPUT_WATCOM_LBC, align 4
  store i32 %110, i32* %8, align 4
  br label %118

111:                                              ; preds = %101
  %112 = load i32, i32* @OUTPUT_NETWARE_IMP, align 4
  store i32 %112, i32* %8, align 4
  br label %118

113:                                              ; preds = %101
  %114 = load i32, i32* @OUTPUT_GNU_VERMAP, align 4
  store i32 %114, i32* %8, align 4
  br label %118

115:                                              ; preds = %101
  br label %118

116:                                              ; preds = %101
  %117 = call i32 (...) @usage()
  br label %118

118:                                              ; preds = %116, %115, %113, %111, %109, %107
  br label %122

119:                                              ; preds = %33
  store i32 1, i32* %6, align 4
  br label %122

120:                                              ; preds = %33
  %121 = call i32 (...) @usage()
  br label %122

122:                                              ; preds = %120, %119, %118, %99, %76, %41
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %4, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %5, align 8
  br label %20

127:                                              ; preds = %31
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32*, i32** @stdin, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @read_header_file(i32* %131, i32 %132)
  br label %177

134:                                              ; preds = %127
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %4, align 4
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i32 1
  store i8** %138, i8*** %5, align 8
  br label %139

139:                                              ; preds = %171, %134
  %140 = load i32, i32* %4, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %176

142:                                              ; preds = %139
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 0
  %145 = load i8*, i8** %144, align 8
  %146 = call i32* @fopen(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %146, i32** %12, align 8
  %147 = load i32*, i32** %12, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* @stderr, align 4
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @fprintf(i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  br label %170

155:                                              ; preds = %142
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* @stderr, align 4
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @fprintf(i32 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @read_header_file(i32* %165, i32 %166)
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @fclose(i32* %168)
  br label %170

170:                                              ; preds = %164, %149
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %4, align 4
  %174 = load i8**, i8*** %5, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i32 1
  store i8** %175, i8*** %5, align 8
  br label %139

176:                                              ; preds = %139
  br label %177

177:                                              ; preds = %176, %130
  %178 = load i64, i64* @num_names, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %177
  %183 = call i32 (...) @names_sort()
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i8*, i8** %10, align 8
  %187 = call i32 @names_dump(i32* %184, i32 %185, i8* %186)
  %188 = load i32*, i32** %9, align 8
  %189 = load i32*, i32** @stdout, align 8
  %190 = icmp ne i32* %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load i32*, i32** %9, align 8
  %193 = call i32 @fclose(i32* %192)
  br label %194

194:                                              ; preds = %191, %182
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read_header_file(i32*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @names_sort(...) #1

declare dso_local i32 @names_dump(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
