; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_bspc.c_AASOuputFile.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_bspc.c_AASOuputFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".aas\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pk3\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pak\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sin\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"maps\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"aas\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AASOuputFile(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = call i32 @AppendPathSeperator(i8* %21, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = call i32 @ExtractFileBase(i32 %26, i8* %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %144

35:                                               ; preds = %3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ExtractFileExtension(i8* %38, i8* %13)
  %40 = call i32 @stricmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = call i32 @stricmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @stricmp(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %111, label %48

48:                                               ; preds = %45, %42, %35
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcpy(i8* %49, i8* %52)
  br label %54

54:                                               ; preds = %80, %48
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 92
  br i1 %67, label %68, label %78

68:                                               ; preds = %58
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 47
  br label %78

78:                                               ; preds = %68, %58, %54
  %79 = phi i1 [ false, %58 ], [ false, %54 ], [ %77, %68 ]
  br i1 %79, label %80, label %87

80:                                               ; preds = %78
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  store i8 0, i8* %86, align 1
  br label %54

87:                                               ; preds = %78
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @strcat(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @access(i8* %90, i32 4)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @CreatePath(i8* %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @MAX_PATH, align 4
  %99 = call i32 @AppendPathSeperator(i8* %97, i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = call i32 @ExtractFileBase(i32 %102, i8* %107)
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @strcat(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %143

111:                                              ; preds = %45
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @strcpy(i8* %112, i8* %115)
  br label %117

117:                                              ; preds = %133, %111
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i8*, i8** %6, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 46
  br label %131

131:                                              ; preds = %121, %117
  %132 = phi i1 [ false, %117 ], [ %130, %121 ]
  br i1 %132, label %133, label %140

133:                                              ; preds = %131
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  store i8 0, i8* %139, align 1
  br label %117

140:                                              ; preds = %131
  %141 = load i8*, i8** %6, align 8
  %142 = call i32 @strcat(i8* %141, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %96
  store i32 0, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %17
  %145 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %9, align 4
  switch i32 %146, label %148 [
    i32 0, label %147
    i32 1, label %147
  ]

147:                                              ; preds = %144, %144
  ret void

148:                                              ; preds = %144
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @AppendPathSeperator(i8*, i32) #2

declare dso_local i32 @ExtractFileBase(i32, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @ExtractFileExtension(i8*, i8*) #2

declare dso_local i32 @stricmp(i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @CreatePath(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
