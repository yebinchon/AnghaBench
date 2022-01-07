; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_atom.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.imap_atom.atom_specials = private unnamed_addr constant [8 x i8] c"(){ %*]\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @imap_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @imap_atom(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = bitcast [8 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.imap_atom.atom_specials, i32 0, i32 0), i64 8, i1 false)
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i8* null, i8** %13, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %156

20:                                               ; preds = %2
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %74, %20
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %74

34:                                               ; preds = %26
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %10, align 8
  br label %73

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %72, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  store i8* %46, i8** %14, align 8
  br label %47

47:                                               ; preds = %68, %45
  %48 = load i8*, i8** %14, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  br i1 %57, label %58, label %71

58:                                               ; preds = %56
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %14, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i8*, i8** %14, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %14, align 8
  br label %47

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %42
  br label %73

73:                                               ; preds = %72, %39
  br label %74

74:                                               ; preds = %73, %31
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  br label %22

77:                                               ; preds = %22
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = call i8* @strdup(i8* %87)
  store i8* %88, i8** %3, align 8
  br label %156

89:                                               ; preds = %83, %80, %77
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strlen(i8* %90)
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %91, %92
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %93, %94
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 2
  %100 = sext i32 %99 to i64
  %101 = add i64 %95, %100
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  %104 = mul i64 %103, 1
  %105 = call i64 @malloc(i64 %104)
  %106 = inttoptr i64 %105 to i8*
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %89
  store i8* null, i8** %3, align 8
  br label %156

110:                                              ; preds = %89
  %111 = load i8*, i8** %13, align 8
  store i8* %111, i8** %8, align 8
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %110
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  store i8 34, i8* %116, align 1
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = sub i64 %118, 1
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8 34, i8* %120, align 1
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  br label %123

123:                                              ; preds = %114, %110
  %124 = load i8*, i8** %4, align 8
  store i8* %124, i8** %7, align 8
  br label %125

125:                                              ; preds = %143, %123
  %126 = load i8*, i8** %7, align 8
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load i8*, i8** %7, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 92
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 34
  br i1 %138, label %139, label %143

139:                                              ; preds = %134, %129
  %140 = load i8*, i8** %8, align 8
  store i8 92, i8* %140, align 1
  %141 = load i8*, i8** %8, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %8, align 8
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i8*, i8** %7, align 8
  %145 = load i8, i8* %144, align 1
  %146 = load i8*, i8** %8, align 8
  store i8 %145, i8* %146, align 1
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  br label %125

151:                                              ; preds = %125
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* %12, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %13, align 8
  store i8* %155, i8** %3, align 8
  br label %156

156:                                              ; preds = %151, %109, %86, %19
  %157 = load i8*, i8** %3, align 8
  ret i8* %157
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @malloc(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
