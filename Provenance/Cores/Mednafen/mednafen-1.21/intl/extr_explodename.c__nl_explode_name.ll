; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_explodename.c__nl_explode_name.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/intl/extr_explodename.c__nl_explode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XPG_TERRITORY = common dso_local global i32 0, align 4
@XPG_CODESET = common dso_local global i32 0, align 4
@XPG_NORM_CODESET = common dso_local global i32 0, align 4
@XPG_MODIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_nl_explode_name(i8* %0, i8** %1, i8** %2, i8** %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i8**, i8*** %10, align 8
  store i8* null, i8** %16, align 8
  %17 = load i8**, i8*** %11, align 8
  store i8* null, i8** %17, align 8
  %18 = load i8**, i8*** %12, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8**, i8*** %13, align 8
  store i8* null, i8** %19, align 8
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %14, align 8
  %21 = load i8**, i8*** %9, align 8
  store i8* %20, i8** %21, align 8
  %22 = load i8**, i8*** %9, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @_nl_find_language(i8* %23)
  store i8* %24, i8** %14, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i8**, i8*** %9, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @strchr(i8* %31, i8 signext 0)
  store i8* %32, i8** %14, align 8
  br label %151

33:                                               ; preds = %6
  %34 = load i8*, i8** %14, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 95
  br i1 %38, label %39, label %72

39:                                               ; preds = %33
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %14, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %14, align 8
  %44 = load i8**, i8*** %11, align 8
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %65, %39
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 46
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 64
  br label %63

63:                                               ; preds = %57, %51, %45
  %64 = phi i1 [ false, %51 ], [ false, %45 ], [ %62, %57 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %14, align 8
  br label %45

68:                                               ; preds = %63
  %69 = load i32, i32* @XPG_TERRITORY, align 4
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %68, %33
  %73 = load i8*, i8** %14, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %150

78:                                               ; preds = %72
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %14, align 8
  %83 = load i8**, i8*** %12, align 8
  store i8* %82, i8** %83, align 8
  br label %84

84:                                               ; preds = %98, %78
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 64
  br label %96

96:                                               ; preds = %90, %84
  %97 = phi i1 [ false, %84 ], [ %95, %90 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %14, align 8
  br label %84

101:                                              ; preds = %96
  %102 = load i32, i32* @XPG_CODESET, align 4
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %15, align 4
  %105 = load i8**, i8*** %12, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = icmp ne i8* %106, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %101
  %110 = load i8**, i8*** %12, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %109
  %117 = load i8**, i8*** %12, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = load i8**, i8*** %12, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %119 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i8* @_nl_normalize_codeset(i8* %118, i32 %125)
  %127 = load i8**, i8*** %13, align 8
  store i8* %126, i8** %127, align 8
  %128 = load i8**, i8*** %13, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %116
  store i32 -1, i32* %7, align 4
  br label %207

132:                                              ; preds = %116
  %133 = load i8**, i8*** %12, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %13, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = call i64 @strcmp(i8* %134, i8* %136)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i8**, i8*** %13, align 8
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @free(i8* %141)
  br label %147

143:                                              ; preds = %132
  %144 = load i32, i32* @XPG_NORM_CODESET, align 4
  %145 = load i32, i32* %15, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %143, %139
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148, %109, %101
  br label %150

150:                                              ; preds = %149, %72
  br label %151

151:                                              ; preds = %150, %29
  %152 = load i8*, i8** %14, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 64
  br i1 %156, label %157, label %173

157:                                              ; preds = %151
  %158 = load i8*, i8** %14, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 0, i8* %159, align 1
  %160 = load i8*, i8** %14, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %14, align 8
  %162 = load i8**, i8*** %10, align 8
  store i8* %161, i8** %162, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %157
  %169 = load i32, i32* @XPG_MODIFIER, align 4
  %170 = load i32, i32* %15, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %168, %157
  br label %173

173:                                              ; preds = %172, %151
  %174 = load i8**, i8*** %11, align 8
  %175 = load i8*, i8** %174, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %189

177:                                              ; preds = %173
  %178 = load i8**, i8*** %11, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load i32, i32* @XPG_TERRITORY, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %15, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %15, align 4
  br label %189

189:                                              ; preds = %184, %177, %173
  %190 = load i8**, i8*** %12, align 8
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %205

193:                                              ; preds = %189
  %194 = load i8**, i8*** %12, align 8
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 0
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load i32, i32* @XPG_CODESET, align 4
  %202 = xor i32 %201, -1
  %203 = load i32, i32* %15, align 4
  %204 = and i32 %203, %202
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %200, %193, %189
  %206 = load i32, i32* %15, align 4
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %205, %131
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local i8* @_nl_find_language(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @_nl_normalize_codeset(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
