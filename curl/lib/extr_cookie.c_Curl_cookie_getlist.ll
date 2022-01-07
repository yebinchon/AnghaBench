; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_getlist.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_cookie.c_Curl_cookie_getlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Cookie = type { %struct.Cookie*, i32, i32, i64, i64 }
%struct.CookieInfo = type { %struct.Cookie** }

@TRUE = common dso_local global i32 0, align 4
@cookie_sort = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Cookie* @Curl_cookie_getlist(%struct.CookieInfo* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.Cookie*, align 8
  %6 = alloca %struct.CookieInfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Cookie*, align 8
  %11 = alloca %struct.Cookie*, align 8
  %12 = alloca %struct.Cookie*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.Cookie**, align 8
  %17 = alloca i64, align 8
  store %struct.CookieInfo* %0, %struct.CookieInfo** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.Cookie* null, %struct.Cookie** %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @cookiehash(i8* %18)
  store i64 %19, i64* %15, align 8
  %20 = load %struct.CookieInfo*, %struct.CookieInfo** %6, align 8
  %21 = icmp ne %struct.CookieInfo* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = load %struct.CookieInfo*, %struct.CookieInfo** %6, align 8
  %24 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %23, i32 0, i32 0
  %25 = load %struct.Cookie**, %struct.Cookie*** %24, align 8
  %26 = load i64, i64* %15, align 8
  %27 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %25, i64 %26
  %28 = load %struct.Cookie*, %struct.Cookie** %27, align 8
  %29 = icmp ne %struct.Cookie* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %22, %4
  store %struct.Cookie* null, %struct.Cookie** %5, align 8
  br label %190

31:                                               ; preds = %22
  %32 = load %struct.CookieInfo*, %struct.CookieInfo** %6, align 8
  %33 = call i32 @remove_expired(%struct.CookieInfo* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @isip(i8* %34)
  store i32 %35, i32* %14, align 4
  %36 = load %struct.CookieInfo*, %struct.CookieInfo** %6, align 8
  %37 = getelementptr inbounds %struct.CookieInfo, %struct.CookieInfo* %36, i32 0, i32 0
  %38 = load %struct.Cookie**, %struct.Cookie*** %37, align 8
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %38, i64 %39
  %41 = load %struct.Cookie*, %struct.Cookie** %40, align 8
  store %struct.Cookie* %41, %struct.Cookie** %11, align 8
  br label %42

42:                                               ; preds = %119, %31
  %43 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %44 = icmp ne %struct.Cookie* %43, null
  br i1 %44, label %45, label %123

45:                                               ; preds = %42
  %46 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %47 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %119

53:                                               ; preds = %45
  %54 = load i32, i32* @TRUE, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %119

56:                                               ; preds = %53, %50
  %57 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %58 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %91

61:                                               ; preds = %56
  %62 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %63 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %66
  %70 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %71 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @tailmatch(i32 %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %69, %66, %61
  %77 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %78 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %118

84:                                               ; preds = %81, %76
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %87 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @strcasecompare(i8* %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %84, %69, %56
  %92 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %93 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %98 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i64 @pathmatch(i32 %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %96, %91
  %104 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %105 = call %struct.Cookie* @dup_cookie(%struct.Cookie* %104)
  store %struct.Cookie* %105, %struct.Cookie** %10, align 8
  %106 = load %struct.Cookie*, %struct.Cookie** %10, align 8
  %107 = icmp ne %struct.Cookie* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.Cookie*, %struct.Cookie** %12, align 8
  %110 = load %struct.Cookie*, %struct.Cookie** %10, align 8
  %111 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %110, i32 0, i32 0
  store %struct.Cookie* %109, %struct.Cookie** %111, align 8
  %112 = load %struct.Cookie*, %struct.Cookie** %10, align 8
  store %struct.Cookie* %112, %struct.Cookie** %12, align 8
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %116

115:                                              ; preds = %103
  br label %187

116:                                              ; preds = %108
  br label %117

117:                                              ; preds = %116, %96
  br label %118

118:                                              ; preds = %117, %84, %81
  br label %119

119:                                              ; preds = %118, %53, %50
  %120 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %121 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %120, i32 0, i32 0
  %122 = load %struct.Cookie*, %struct.Cookie** %121, align 8
  store %struct.Cookie* %122, %struct.Cookie** %11, align 8
  br label %42

123:                                              ; preds = %42
  %124 = load i64, i64* %13, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %185

126:                                              ; preds = %123
  %127 = load i64, i64* %13, align 8
  %128 = mul i64 8, %127
  %129 = trunc i64 %128 to i32
  %130 = call %struct.Cookie** @malloc(i32 %129)
  store %struct.Cookie** %130, %struct.Cookie*** %16, align 8
  %131 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %132 = icmp ne %struct.Cookie** %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %187

134:                                              ; preds = %126
  %135 = load %struct.Cookie*, %struct.Cookie** %12, align 8
  store %struct.Cookie* %135, %struct.Cookie** %11, align 8
  store i64 0, i64* %17, align 8
  br label %136

136:                                              ; preds = %145, %134
  %137 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %138 = icmp ne %struct.Cookie* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %141 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %142 = load i64, i64* %17, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %17, align 8
  %144 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %141, i64 %142
  store %struct.Cookie* %140, %struct.Cookie** %144, align 8
  br label %145

145:                                              ; preds = %139
  %146 = load %struct.Cookie*, %struct.Cookie** %11, align 8
  %147 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %146, i32 0, i32 0
  %148 = load %struct.Cookie*, %struct.Cookie** %147, align 8
  store %struct.Cookie* %148, %struct.Cookie** %11, align 8
  br label %136

149:                                              ; preds = %136
  %150 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i32, i32* @cookie_sort, align 4
  %153 = call i32 @qsort(%struct.Cookie** %150, i64 %151, i32 8, i32 %152)
  %154 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %155 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %154, i64 0
  %156 = load %struct.Cookie*, %struct.Cookie** %155, align 8
  store %struct.Cookie* %156, %struct.Cookie** %12, align 8
  store i64 0, i64* %17, align 8
  br label %157

157:                                              ; preds = %173, %149
  %158 = load i64, i64* %17, align 8
  %159 = load i64, i64* %13, align 8
  %160 = sub i64 %159, 1
  %161 = icmp ult i64 %158, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %164 = load i64, i64* %17, align 8
  %165 = add i64 %164, 1
  %166 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %163, i64 %165
  %167 = load %struct.Cookie*, %struct.Cookie** %166, align 8
  %168 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %169 = load i64, i64* %17, align 8
  %170 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %168, i64 %169
  %171 = load %struct.Cookie*, %struct.Cookie** %170, align 8
  %172 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %171, i32 0, i32 0
  store %struct.Cookie* %167, %struct.Cookie** %172, align 8
  br label %173

173:                                              ; preds = %162
  %174 = load i64, i64* %17, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %17, align 8
  br label %157

176:                                              ; preds = %157
  %177 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %178 = load i64, i64* %13, align 8
  %179 = sub i64 %178, 1
  %180 = getelementptr inbounds %struct.Cookie*, %struct.Cookie** %177, i64 %179
  %181 = load %struct.Cookie*, %struct.Cookie** %180, align 8
  %182 = getelementptr inbounds %struct.Cookie, %struct.Cookie* %181, i32 0, i32 0
  store %struct.Cookie* null, %struct.Cookie** %182, align 8
  %183 = load %struct.Cookie**, %struct.Cookie*** %16, align 8
  %184 = call i32 @free(%struct.Cookie** %183)
  br label %185

185:                                              ; preds = %176, %123
  %186 = load %struct.Cookie*, %struct.Cookie** %12, align 8
  store %struct.Cookie* %186, %struct.Cookie** %5, align 8
  br label %190

187:                                              ; preds = %133, %115
  %188 = load %struct.Cookie*, %struct.Cookie** %12, align 8
  %189 = call i32 @Curl_cookie_freelist(%struct.Cookie* %188)
  store %struct.Cookie* null, %struct.Cookie** %5, align 8
  br label %190

190:                                              ; preds = %187, %185, %30
  %191 = load %struct.Cookie*, %struct.Cookie** %5, align 8
  ret %struct.Cookie* %191
}

declare dso_local i64 @cookiehash(i8*) #1

declare dso_local i32 @remove_expired(%struct.CookieInfo*) #1

declare dso_local i32 @isip(i8*) #1

declare dso_local i64 @tailmatch(i32, i8*) #1

declare dso_local i64 @strcasecompare(i8*, i32) #1

declare dso_local i64 @pathmatch(i32, i8*) #1

declare dso_local %struct.Cookie* @dup_cookie(%struct.Cookie*) #1

declare dso_local %struct.Cookie** @malloc(i32) #1

declare dso_local i32 @qsort(%struct.Cookie**, i64, i32, i32) #1

declare dso_local i32 @free(%struct.Cookie**) #1

declare dso_local i32 @Curl_cookie_freelist(%struct.Cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
