; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_aselib.c_ASE_Process.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_aselib.c_ASE_Process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

@qfalse = common dso_local global i32 0, align 4
@s_token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"*3DSMAX_ASCIIEXPORT\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"*COMMENT\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"*SCENE\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"*MATERIAL_LIST\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"MATERIAL_LIST\0A\00", align 1
@ASE_KeyMATERIAL_LIST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"*GEOMOBJECT\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"GEOMOBJECT\00", align 1
@ASE_KeyGEOMOBJECT = common dso_local global i32 0, align 4
@ase = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"Bip\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ignore_\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"(discarding BIP/ignore object)\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"h_\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"l_\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"u_\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"(ignoring improperly labeled object '%s')\0A\00", align 1
@MAX_ASE_OBJECTS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"Too many GEOMOBJECTs\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"Unknown token '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"No animation data!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ASE_Process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ASE_Process() #0 {
  br label %1

1:                                                ; preds = %143, %0
  %2 = load i32, i32* @qfalse, align 4
  %3 = call i64 @ASE_GetToken(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %144

5:                                                ; preds = %1
  %6 = load i8*, i8** @s_token, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i8*, i8** @s_token, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %5
  %14 = call i32 (...) @ASE_SkipRestOfLine()
  br label %143

15:                                               ; preds = %9
  %16 = load i8*, i8** @s_token, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = call i32 (...) @ASE_SkipEnclosingBraces()
  br label %142

21:                                               ; preds = %15
  %22 = load i8*, i8** @s_token, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = call i32 @VERBOSE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* @ASE_KeyMATERIAL_LIST, align 4
  %28 = call i32 @ASE_ParseBracedBlock(i32 %27)
  br label %141

29:                                               ; preds = %21
  %30 = load i8*, i8** @s_token, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %131, label %33

33:                                               ; preds = %29
  %34 = call i32 @VERBOSE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32, i32* @ASE_KeyGEOMOBJECT, align 4
  %36 = call i32 @ASE_ParseBracedBlock(i32 %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @strstr(i64 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %33
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @strstr(i64 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44, %33
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %54 = call i32 @ASE_FreeGeomObject(i64 %53)
  %55 = call i32 @VERBOSE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %130

56:                                               ; preds = %44
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @strstr(i64 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %62, %67
  br i1 %68, label %69, label %121

69:                                               ; preds = %56
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @strstr(i64 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %69
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @strstr(i64 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %88, %93
  br i1 %94, label %95, label %121

95:                                               ; preds = %82
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %97 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @strstr(i64 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %101, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %95
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 2), align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 1), align 8
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @VERBOSE(i8* %117)
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %120 = call i32 @ASE_FreeGeomObject(i64 %119)
  br label %129

121:                                              ; preds = %108, %95, %82, %69, %56
  %122 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %124 = load i64, i64* @MAX_ASE_OBJECTS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = call i32 @Error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  br label %129

129:                                              ; preds = %128, %111
  br label %130

130:                                              ; preds = %129, %52
  br label %140

131:                                              ; preds = %29
  %132 = load i8*, i8** @s_token, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** @s_token, align 8
  %138 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %25
  br label %142

142:                                              ; preds = %141, %19
  br label %143

143:                                              ; preds = %142, %13
  br label %1

144:                                              ; preds = %1
  %145 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ase, i32 0, i32 0), align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = call i32 @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = call i32 (...) @CollapseObjects()
  ret void
}

declare dso_local i64 @ASE_GetToken(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @ASE_SkipRestOfLine(...) #1

declare dso_local i32 @ASE_SkipEnclosingBraces(...) #1

declare dso_local i32 @VERBOSE(i8*) #1

declare dso_local i32 @ASE_ParseBracedBlock(i32) #1

declare dso_local i64 @strstr(i64, i8*) #1

declare dso_local i32 @ASE_FreeGeomObject(i64) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @CollapseObjects(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
