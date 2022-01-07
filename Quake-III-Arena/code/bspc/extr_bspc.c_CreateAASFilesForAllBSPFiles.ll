; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_bspc.c_CreateAASFilesForAllBSPFiles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_bspc.c_CreateAASFilesForAllBSPFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8** }
%struct.stat = type { i32 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_9__* }

@_MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"maps/*.bsp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"*.pk3/maps/*.bsp\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"maps/*.aas\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"*.pk3/maps/*.aas\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"found %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".bsp\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".aas\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateAASFilesForAllBSPFiles(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_10__, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %2, align 8
  %19 = load i32, i32* @_MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = load i32, i32* @_MAX_PATH, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load i32, i32* @_MAX_PATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %29 = load i32, i32* @_MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %32 = load i32, i32* @_MAX_PATH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %35 = load i32, i32* @_MAX_PATH, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %13, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @strcpy(i8* %22, i8* %38)
  %40 = trunc i64 %20 to i32
  %41 = call i32 @AppendPathSeperator(i8* %22, i32 %40)
  %42 = call i32 @strcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @glob(i8* %22, i32 0, i32* null, %struct.TYPE_10__* %3)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %174, %1
  %45 = load i32, i32* %5, align 4
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %177

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcpy(i8* %37, i8* %55)
  %57 = call i32 @stat(i8* %37, %struct.stat* %4)
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @S_IFDIR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %173

63:                                               ; preds = %49
  %64 = trunc i64 %36 to i32
  %65 = call i32 @AppendPathSeperator(i8* %37, i32 %64)
  %66 = call i32 @strcpy(i8* %25, i8* %37)
  %67 = call i32 @strcat(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %68 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %25)
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %16, align 8
  %69 = call i32 @strcpy(i8* %25, i8* %37)
  %70 = call i32 @strcat(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %71 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %25)
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %17, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %72, %struct.TYPE_9__** %14, align 8
  br label %73

73:                                               ; preds = %83, %63
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %75 = icmp ne %struct.TYPE_9__* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %87

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  store %struct.TYPE_9__* %86, %struct.TYPE_9__** %14, align 8
  br label %73

87:                                               ; preds = %81, %73
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 2
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %93, align 8
  br label %96

94:                                               ; preds = %87
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %17, align 8
  br label %96

96:                                               ; preds = %94, %90
  %97 = call i32 @strcpy(i8* %28, i8* %37)
  %98 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %99 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %28)
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %16, align 8
  %100 = call i32 @strcpy(i8* %28, i8* %37)
  %101 = call i32 @strcat(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %102 = call %struct.TYPE_9__* @FindQuakeFiles(i8* %28)
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %18, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %14, align 8
  br label %104

104:                                              ; preds = %114, %96
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %106 = icmp ne %struct.TYPE_9__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %118

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  store %struct.TYPE_9__* %117, %struct.TYPE_9__** %14, align 8
  br label %104

118:                                              ; preds = %112, %104
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %120 = icmp ne %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  store %struct.TYPE_9__* %122, %struct.TYPE_9__** %124, align 8
  br label %127

125:                                              ; preds = %118
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %18, align 8
  br label %127

127:                                              ; preds = %125, %121
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %14, align 8
  br label %129

129:                                              ; preds = %168, %127
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %131 = icmp ne %struct.TYPE_9__* %130, null
  br i1 %131, label %132, label %172

132:                                              ; preds = %129
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %135, i8* %138)
  %140 = call i32 @Log_Print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %31)
  %141 = call i64 @strlen(i8* %31)
  %142 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %143 = sub i64 %141, %142
  %144 = getelementptr inbounds i8, i8* %31, i64 %143
  %145 = call i32 @strcpy(i8* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %146, %struct.TYPE_9__** %15, align 8
  br label %147

147:                                              ; preds = %163, %132
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %149 = icmp ne %struct.TYPE_9__* %148, null
  br i1 %149, label %150, label %167

150:                                              ; preds = %147
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @sprintf(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %153, i8* %156)
  %158 = call i32 @stricmp(i8* %31, i8* %34)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %150
  %161 = call i32 @Log_Print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %34)
  br label %167

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  store %struct.TYPE_9__* %166, %struct.TYPE_9__** %15, align 8
  br label %147

167:                                              ; preds = %160, %147
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %14, align 8
  br label %129

172:                                              ; preds = %129
  br label %173

173:                                              ; preds = %172, %49
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %44

177:                                              ; preds = %44
  %178 = call i32 @globfree(%struct.TYPE_10__* %3)
  %179 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %179)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @AppendPathSeperator(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @glob(i8*, i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local %struct.TYPE_9__* @FindQuakeFiles(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @Log_Print(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @stricmp(i8*, i8*) #2

declare dso_local i32 @globfree(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
