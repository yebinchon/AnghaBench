; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_entryGetAlias.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_directory.c__FAT_directory_entryGetAlias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIR_ENTRY_FREE = common dso_local global i8 0, align 1
@DIR_ENTRY_caseInfo = common dso_local global i64 0, align 8
@CASE_LOWER_BASE = common dso_local global i8 0, align 1
@DIR_ENTRY_name = common dso_local global i32 0, align 4
@DIR_ENTRY_extension = common dso_local global i64 0, align 8
@CASE_LOWER_EXT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @_FAT_directory_entryGetAlias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_FAT_directory_entryGetAlias(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @DIR_ENTRY_FREE, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %163

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 46, i8* %26, align 1
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 46, i8* %34, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 0, i8* %36, align 1
  br label %40

37:                                               ; preds = %24
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %37, %32
  br label %162

41:                                               ; preds = %18
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* @DIR_ENTRY_caseInfo, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @CASE_LOWER_BASE, align 1
  %48 = sext i8 %47 to i32
  %49 = and i32 %46, %48
  store i32 %49, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %89, %41
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @DIR_ENTRY_name, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 32
  br label %63

63:                                               ; preds = %53, %50
  %64 = phi i1 [ false, %50 ], [ %62, %53 ]
  br i1 %64, label %65, label %92

65:                                               ; preds = %63
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* @DIR_ENTRY_name, align 4
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %5, align 1
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i8, i8* %5, align 1
  %77 = call signext i8 @tolower(i8 zeroext %76)
  %78 = sext i8 %77 to i32
  br label %82

79:                                               ; preds = %65
  %80 = load i8, i8* %5, align 1
  %81 = sext i8 %80 to i32
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i32 [ %78, %75 ], [ %81, %79 ]
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 %84, i8* %88, align 1
  br label %89

89:                                               ; preds = %82
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %50

92:                                               ; preds = %63
  %93 = load i8*, i8** %3, align 8
  %94 = load i64, i64* @DIR_ENTRY_extension, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 32
  br i1 %98, label %99, label %157

99:                                               ; preds = %92
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 46, i8* %104, align 1
  %105 = load i8*, i8** %3, align 8
  %106 = load i64, i64* @DIR_ENTRY_caseInfo, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = load i8, i8* @CASE_LOWER_EXT, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %109, %111
  store i32 %112, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %153, %99
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %126

116:                                              ; preds = %113
  %117 = load i8*, i8** %3, align 8
  %118 = load i64, i64* @DIR_ENTRY_extension, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %118, %120
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 32
  br label %126

126:                                              ; preds = %116, %113
  %127 = phi i1 [ false, %113 ], [ %125, %116 ]
  br i1 %127, label %128, label %156

128:                                              ; preds = %126
  %129 = load i8*, i8** %3, align 8
  %130 = load i64, i64* @DIR_ENTRY_extension, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = add i64 %130, %132
  %134 = getelementptr inbounds i8, i8* %129, i64 %133
  %135 = load i8, i8* %134, align 1
  store i8 %135, i8* %5, align 1
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load i8, i8* %5, align 1
  %140 = call signext i8 @tolower(i8 zeroext %139)
  %141 = sext i8 %140 to i32
  br label %145

142:                                              ; preds = %128
  %143 = load i8, i8* %5, align 1
  %144 = sext i8 %143 to i32
  br label %145

145:                                              ; preds = %142, %138
  %146 = phi i32 [ %141, %138 ], [ %144, %142 ]
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %4, align 8
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 %147, i8* %152, align 1
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %113

156:                                              ; preds = %126
  br label %157

157:                                              ; preds = %156, %92
  %158 = load i8*, i8** %4, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 0, i8* %161, align 1
  br label %162

162:                                              ; preds = %157, %40
  br label %163

163:                                              ; preds = %162, %2
  %164 = load i8*, i8** %4, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp ne i32 %167, 0
  %169 = zext i1 %168 to i32
  ret i32 %169
}

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
