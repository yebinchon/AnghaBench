; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_merge.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_uri.c_vc_uri_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_uri_merge(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 1, i32* %6, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %185

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @duplicate_string(i8* %21, i8** %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %185

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32, %27
  store i32 1, i32* %3, align 4
  br label %185

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = call i32 @duplicate_string(i8* %46, i8** %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %43
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = call i32 @duplicate_string(i8* %54, i8** %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 3
  %65 = call i32 @duplicate_string(i8* %62, i8** %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %59, %51, %43
  store i32 0, i32* %3, align 4
  br label %185

68:                                               ; preds = %59
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74, %68
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = call i32 @vc_uri_copy_base_path(%struct.TYPE_6__* %79, %struct.TYPE_6__* %80)
  store i32 %81, i32* %6, align 4
  br label %183

82:                                               ; preds = %74
  %83 = load i8*, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 47
  br i1 %86, label %87, label %182

87:                                               ; preds = %82
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %8, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i8*, i8** %8, align 8
  %95 = load i8, i8* %94, align 1
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %115, label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %102, %97
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %114

113:                                              ; preds = %107
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %114

114:                                              ; preds = %113, %112
  br label %115

115:                                              ; preds = %114, %93
  %116 = load i8*, i8** %8, align 8
  %117 = call i64 @strlen(i8* %116)
  %118 = load i8*, i8** %7, align 8
  %119 = call i64 @strlen(i8* %118)
  %120 = add i64 %117, %119
  %121 = add i64 %120, 1
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i64 @malloc(i64 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** %9, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %185

128:                                              ; preds = %115
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @strncpy(i8* %129, i8* %130, i64 %131)
  %133 = load i8*, i8** %9, align 8
  %134 = call i8* @strrchr(i8* %133, i8 signext 47)
  store i8* %134, i8** %10, align 8
  %135 = load i8*, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 59
  br i1 %138, label %139, label %153

139:                                              ; preds = %128
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %9, align 8
  store i8* %143, i8** %10, align 8
  br label %144

144:                                              ; preds = %142, %139
  %145 = load i8*, i8** %10, align 8
  %146 = call i8* @strchr(i8* %145, i8 signext 59)
  store i8* %146, i8** %12, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 0, i8* %151, align 1
  br label %152

152:                                              ; preds = %149, %144
  br label %163

153:                                              ; preds = %128
  %154 = load i8*, i8** %10, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8 0, i8* %158, align 1
  br label %162

159:                                              ; preds = %153
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  store i8 0, i8* %161, align 1
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %152
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = call i64 @strlen(i8* %167)
  %169 = sub i64 %166, %168
  %170 = sub i64 %169, 1
  %171 = call i32 @strncat(i8* %164, i8* %165, i64 %170)
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @vc_uri_remove_single_dot_segments(i8* %172)
  %174 = load i8*, i8** %9, align 8
  %175 = call i32 @vc_uri_remove_double_dot_segments(i8* %174)
  %176 = load i8*, i8** %9, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 4
  %179 = call i32 @duplicate_string(i8* %176, i8** %178)
  store i32 %179, i32* %6, align 4
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @free(i8* %180)
  br label %182

182:                                              ; preds = %163, %82
  br label %183

183:                                              ; preds = %182, %78
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %127, %67, %42, %26, %17
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @duplicate_string(i8*, i8**) #1

declare dso_local i32 @vc_uri_copy_base_path(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i32 @vc_uri_remove_single_dot_segments(i8*) #1

declare dso_local i32 @vc_uri_remove_double_dot_segments(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
