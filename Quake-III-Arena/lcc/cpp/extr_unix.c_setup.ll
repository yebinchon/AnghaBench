; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_unix.c_setup.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/cpp/extr_unix.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [17 x i8] c"MNOVv+I:D:U:F:lg\00", align 1
@NINCLUDE = common dso_local global i32 0, align 4
@includelist = common dso_local global %struct.TYPE_2__* null, align 8
@optarg = common dso_local global i8* null, align 8
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Too many -I directives\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<cmdarg>\00", align 1
@Mflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@rcsid = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
@Cplusplus = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Can't open input file %s\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Can't open output file %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  call void @setup_kwtab()
  br label %13

13:                                               ; preds = %106, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %107

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %105 [
    i32 78, label %20
    i32 73, label %44
    i32 68, label %81
    i32 85, label %81
    i32 77, label %89
    i32 118, label %92
    i32 86, label %99
    i32 43, label %102
  ]

20:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NINCLUDE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %21

43:                                               ; preds = %21
  br label %106

44:                                               ; preds = %18
  %45 = load i32, i32* @NINCLUDE, align 4
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %71, %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i8*, i8** @optarg, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i8* %64, i8** %69, align 8
  br label %74

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %47

74:                                               ; preds = %58, %47
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @FATAL, align 4
  %79 = call i32 (i32, i8*, ...) @error(i32 %78, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  br label %106

81:                                               ; preds = %18, %18
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @setsource(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 -1, i8* %82)
  %84 = call i32 @maketokenrow(i32 3, i32* %10)
  %85 = call i32 @gettokens(i32* %10, i32 1)
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @doadefine(i32* %10, i32 %86)
  %88 = call i32 (...) @unsetsource()
  br label %106

89:                                               ; preds = %18
  %90 = load i64, i64* @Mflag, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* @Mflag, align 8
  br label %106

92:                                               ; preds = %18
  %93 = load i32, i32* @stderr, align 4
  %94 = load i8**, i8*** %4, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 0
  %96 = load i8*, i8** %95, align 8
  %97 = load i8*, i8** @rcsid, align 8
  %98 = call i32 @fprintf(i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %96, i8* %97)
  br label %106

99:                                               ; preds = %18
  %100 = load i32, i32* @verbose, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @verbose, align 4
  br label %106

102:                                              ; preds = %18
  %103 = load i32, i32* @Cplusplus, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @Cplusplus, align 4
  br label %106

105:                                              ; preds = %18
  br label %106

106:                                              ; preds = %105, %102, %99, %92, %89, %81, %80, %43
  br label %13

107:                                              ; preds = %13
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  store i32 0, i32* %6, align 4
  %108 = load i32, i32* @optind, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %167

111:                                              ; preds = %107
  %112 = load i8**, i8*** %4, align 8
  %113 = load i32, i32* @optind, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @strrchr(i8* %116, i8 signext 47)
  store i8* %117, i8** %8, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %144

119:                                              ; preds = %111
  %120 = load i8*, i8** %8, align 8
  %121 = load i8**, i8*** %4, align 8
  %122 = load i32, i32* @optind, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = ptrtoint i8* %120 to i64
  %127 = ptrtoint i8* %125 to i64
  %128 = sub i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %11, align 4
  %130 = load i8**, i8*** %4, align 8
  %131 = load i32, i32* @optind, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = bitcast i8* %134 to i32*
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i64 @newstring(i32* %135, i32 %137, i32 0)
  %139 = inttoptr i64 %138 to i8*
  store i8* %139, i8** %9, align 8
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  store i8 0, i8* %143, align 1
  br label %144

144:                                              ; preds = %119, %111
  %145 = load i8**, i8*** %4, align 8
  %146 = load i32, i32* @optind, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = load i8**, i8*** %4, align 8
  %152 = load i32, i32* @optind, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = call i64 @newstring(i32* %150, i32 %156, i32 0)
  %158 = inttoptr i64 %157 to i8*
  store i8* %158, i8** %8, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 @open(i8* %159, i32 0)
  store i32 %160, i32* %6, align 4
  %161 = icmp sle i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %144
  %163 = load i32, i32* @FATAL, align 4
  %164 = load i8*, i8** %8, align 8
  %165 = call i32 (i32, i8*, ...) @error(i32 %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %162, %144
  br label %167

167:                                              ; preds = %166, %107
  %168 = load i32, i32* @optind, align 4
  %169 = add nsw i32 %168, 1
  %170 = load i32, i32* %3, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %167
  %173 = load i8**, i8*** %4, align 8
  %174 = load i32, i32* @optind, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @creat(i8* %178, i32 438)
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %172
  %183 = load i32, i32* @FATAL, align 4
  %184 = load i8**, i8*** %4, align 8
  %185 = load i32, i32* @optind, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %184, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i32, i8*, ...) @error(i32 %183, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* %189)
  br label %191

191:                                              ; preds = %182, %172
  %192 = load i32, i32* %12, align 4
  %193 = call i32 @dup2(i32 %192, i32 1)
  br label %194

194:                                              ; preds = %191, %167
  %195 = load i64, i64* @Mflag, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i8*, i8** %8, align 8
  %199 = call i32 @setobjname(i8* %198)
  br label %200

200:                                              ; preds = %197, %194
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %202 = load i32, i32* @NINCLUDE, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @includelist, align 8
  %209 = load i32, i32* @NINCLUDE, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  store i8* %207, i8** %213, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @setsource(i8* %214, i32 %215, i8* null)
  ret void
}

declare dso_local void @setup_kwtab() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @error(i32, i8*, ...) #1

declare dso_local i32 @setsource(i8*, i32, i8*) #1

declare dso_local i32 @maketokenrow(i32, i32*) #1

declare dso_local i32 @gettokens(i32*, i32) #1

declare dso_local i32 @doadefine(i32*, i32) #1

declare dso_local i32 @unsetsource(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @newstring(i32*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @creat(i8*, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @setobjname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
