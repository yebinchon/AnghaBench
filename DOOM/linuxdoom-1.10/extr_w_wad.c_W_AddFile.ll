; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_AddFile.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_w_wad.c_W_AddFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@reloadname = common dso_local global i8* null, align 8
@numlumps = common dso_local global i32 0, align 4
@reloadlump = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" couldn't open %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" adding %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"wad\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"IWAD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PWAD\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Wad file %s doesn't have IWAD or PWAD id\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@lumpinfo = common dso_local global %struct.TYPE_10__* null, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"Couldn't realloc lumpinfo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @W_AddFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 126
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %2, align 8
  %20 = load i8*, i8** %2, align 8
  store i8* %20, i8** @reloadname, align 8
  %21 = load i32, i32* @numlumps, align 4
  store i32 %21, i32* @reloadlump, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = load i32, i32* @O_BINARY, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %168

32:                                               ; preds = %22
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @numlumps, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = getelementptr inbounds i8, i8* %40, i64 -3
  %42 = call i64 @strcmpi(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %32
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @filelength(i32 %46)
  %48 = call i8* @LONG(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ExtractFileBase(i8* %51, i32 %53)
  %55 = load i32, i32* @numlumps, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @numlumps, align 4
  br label %104

57:                                               ; preds = %32
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @read(i32 %58, %struct.TYPE_9__* %3, i32 24)
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @strncmp(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @strncmp(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %57
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @LONG(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @LONG(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 24
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call %struct.TYPE_9__* @alloca(i32 %89)
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SEEK_SET, align 4
  %95 = call i32 @lseek(i32 %91, i32 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @read(i32 %96, %struct.TYPE_9__* %97, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @numlumps, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* @numlumps, align 4
  br label %104

104:                                              ; preds = %73, %44
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lumpinfo, align 8
  %106 = load i32, i32* @numlumps, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 24
  %109 = trunc i64 %108 to i32
  %110 = call %struct.TYPE_10__* @realloc(%struct.TYPE_10__* %105, i32 %109)
  store %struct.TYPE_10__* %110, %struct.TYPE_10__** @lumpinfo, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lumpinfo, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %104
  %114 = call i32 (i8*, ...) @I_Error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %104
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** @lumpinfo, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %118
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %4, align 8
  %120 = load i8*, i8** @reloadname, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i32 [ -1, %122 ], [ %124, %123 ]
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %155, %125
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @numlumps, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %162

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @LONG(i32 %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @LONG(i32 %144)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @strncpy(i32 %150, i32 %153, i32 8)
  br label %155

155:                                              ; preds = %132
  %156 = load i32, i32* %5, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %5, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 1
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %4, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 1
  store %struct.TYPE_9__* %161, %struct.TYPE_9__** %9, align 8
  br label %128

162:                                              ; preds = %128
  %163 = load i8*, i8** @reloadname, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @close(i32 %166)
  br label %168

168:                                              ; preds = %29, %165, %162
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @strcmpi(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @LONG(i32) #1

declare dso_local i32 @filelength(i32) #1

declare dso_local i32 @ExtractFileBase(i8*, i32) #1

declare dso_local i32 @read(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @I_Error(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @alloca(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @realloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
