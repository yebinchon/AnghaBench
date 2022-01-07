; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_SYSROM_FindInDir.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sysrom.c_SYSROM_FindInDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i64 }
%struct.dirent = type { i8* }

@num_unset_roms = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SYSROM_SIZE = common dso_local global i32 0, align 4
@SYSROM_roms = common dso_local global %struct.TYPE_2__* null, align 8
@CRC_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SYSROM_FindInDir(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i64, i64* @num_unset_roms, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %176

24:                                               ; preds = %19, %2
  %25 = load i8*, i8** %4, align 8
  %26 = call i32* @opendir(i8* %25)
  store i32* %26, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %3, align 4
  br label %176

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %171, %168, %30
  %32 = load i32*, i32** %6, align 8
  %33 = call %struct.dirent* @readdir(i32* %32)
  store %struct.dirent* %33, %struct.dirent** %7, align 8
  %34 = icmp ne %struct.dirent* %33, null
  br i1 %34, label %35, label %172

35:                                               ; preds = %31
  %36 = load i32, i32* @FILENAME_MAX, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %8, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %9, align 8
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.dirent*, %struct.dirent** %7, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @Util_catpath(i8* %39, i8* %41, i8* %44)
  %46 = call i32* @fopen(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** %10, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 2, i32* %15, align 4
  br label %168

49:                                               ; preds = %35
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @Util_flen(i32* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @IsLengthAllowed(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @fclose(i32* %56)
  store i32 2, i32* %15, align 4
  br label %168

58:                                               ; preds = %49
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @Util_rewind(i32* %59)
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @CRC32_FromFile(i32* %61, i64* %13)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @fclose(i32* %65)
  store i32 2, i32* %15, align 4
  br label %168

67:                                               ; preds = %58
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @fclose(i32* %68)
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %124, %67
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @SYSROM_SIZE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %127

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %77, %74
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %123

94:                                               ; preds = %85
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @CRC_NULL, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %94
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %13, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %103
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @strcpy(i32 %118, i8* %39)
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @ClearUnsetFlag(i32 %120)
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %14, align 4
  br label %127

123:                                              ; preds = %103, %94, %85, %77
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %70

127:                                              ; preds = %112, %70
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %167, label %130

130:                                              ; preds = %127
  %131 = load %struct.dirent*, %struct.dirent** %7, align 8
  %132 = getelementptr inbounds %struct.dirent, %struct.dirent* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %16, align 8
  br label %134

134:                                              ; preds = %139, %130
  %135 = load i8*, i8** %16, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = load i8*, i8** %16, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call i64 @tolower(i8 signext %141)
  %143 = trunc i64 %142 to i8
  %144 = load i8*, i8** %16, align 8
  store i8 %143, i8* %144, align 1
  %145 = load i8*, i8** %16, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %16, align 8
  br label %134

147:                                              ; preds = %134
  %148 = load %struct.dirent*, %struct.dirent** %7, align 8
  %149 = getelementptr inbounds %struct.dirent, %struct.dirent* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @MatchByName(i8* %150, i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %147
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @SYSROM_roms, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @strcpy(i32 %162, i8* %39)
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @ClearUnsetFlag(i32 %164)
  br label %166

166:                                              ; preds = %156, %147
  br label %167

167:                                              ; preds = %166, %127
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %167, %64, %55, %48
  %169 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %15, align 4
  switch i32 %170, label %178 [
    i32 0, label %171
    i32 2, label %31
  ]

171:                                              ; preds = %168
  br label %31

172:                                              ; preds = %31
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @closedir(i32* %173)
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %172, %28, %22
  %177 = load i32, i32* %3, align 4
  ret i32 %177

178:                                              ; preds = %168
  unreachable
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Util_catpath(i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Util_flen(i32*) #1

declare dso_local i32 @IsLengthAllowed(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Util_rewind(i32*) #1

declare dso_local i32 @CRC32_FromFile(i32*, i64*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ClearUnsetFlag(i32) #1

declare dso_local i64 @tolower(i8 signext) #1

declare dso_local i32 @MatchByName(i8*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
