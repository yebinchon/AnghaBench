; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_aselib.c_ASE_KeyMAP_DIFFUSE.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_aselib.c_ASE_KeyMAP_DIFFUSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"*BITMAP\00", align 1
@qfalse = common dso_local global i32 0, align 4
@s_token = common dso_local global i8* null, align 8
@gamedir = common dso_local global i8* null, align 8
@ase = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"(not converted: '%s')\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"WARNING: illegal material name '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ASE_KeyMAP_DIFFUSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ASE_KeyMAP_DIFFUSE(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %163, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @qfalse, align 4
  %15 = call i32 @ASE_GetToken(i32 %14)
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %17 = load i8*, i8** @s_token, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i32 @strcpy(i8* %16, i8* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %21 = call i64* @strchr(i8* %20, i8 signext 34)
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %25 = call i64* @strchr(i8* %24, i8 signext 34)
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %13
  br label %27

27:                                               ; preds = %44, %26
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %42
  store i8 47, i8* %43, align 1
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %27

47:                                               ; preds = %27
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** @gamedir, align 8
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** @gamedir, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %57 = load i8, i8* %56, align 16
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 47
  br i1 %64, label %82, label %65

65:                                               ; preds = %60, %55, %47
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 58
  br i1 %69, label %70, label %120

70:                                               ; preds = %65
  %71 = load i8*, i8** @gamedir, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %76, label %120

76:                                               ; preds = %70
  %77 = load i8*, i8** @gamedir, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %120

82:                                               ; preds = %76, %60
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** @gamedir, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  store i8* %91, i8** %7, align 8
  br label %97

92:                                               ; preds = %82
  %93 = load i8*, i8** @gamedir, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %94, i8** %6, align 8
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8* %96, i8** %7, align 8
  br label %97

97:                                               ; preds = %92, %87
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %116, %97
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 2
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi i1 [ false, %98 ], [ %105, %103 ]
  br i1 %107, label %108, label %119

108:                                              ; preds = %106
  %109 = load i8*, i8** %7, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %113, %108
  %117 = load i8*, i8** %7, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %7, align 8
  br label %98

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119, %76, %70, %65
  %121 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %122 = load i8*, i8** %6, align 8
  %123 = call i32 @strcpy(i8* %121, i8* %122)
  %124 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %125 = call i32 @strlwr(i8* %124)
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %127 = load i8*, i8** %7, align 8
  %128 = call i32 @strcpy(i8* %126, i8* %127)
  %129 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %130 = call i32 @strlwr(i8* %129)
  %131 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %132 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = call i8* @strstr(i8* %131, i8* %133)
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %152

136:                                              ; preds = %120
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = call i8* @strstr(i8* %142, i8* %144)
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %147 = call i32 @strlen(i8* %146)
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 -2
  %151 = call i32 @strcpy(i8* %141, i8* %150)
  br label %162

152:                                              ; preds = %120
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %159 = call i32 @sprintf(i8* %157, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %158)
  %160 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %161 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %152, %136
  br label %164

163:                                              ; preds = %1
  br label %164

164:                                              ; preds = %163, %162
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASE_GetToken(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlwr(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
