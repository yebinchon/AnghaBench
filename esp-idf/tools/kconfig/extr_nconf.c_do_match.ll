; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_do_match.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_nconf.c_do_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_state = type { i8*, i64, i32 }

@MATCH_TINKER_PATTERN_DOWN = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@FIND_NEXT_MATCH_DOWN = common dso_local global i32 0, align 4
@KEY_UP = common dso_local global i32 0, align 4
@FIND_NEXT_MATCH_UP = common dso_local global i32 0, align 4
@KEY_BACKSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.match_state*, i32*)* @do_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_match(i32 %0, %struct.match_state* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.match_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.match_state* %1, %struct.match_state** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %8, align 1
  store i32 0, i32* %9, align 4
  %12 = load i32*, i32** %7, align 8
  store i32 -1, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %23, label %15

15:                                               ; preds = %3
  %16 = load %struct.match_state*, %struct.match_state** %6, align 8
  %17 = getelementptr inbounds %struct.match_state, %struct.match_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 27
  br i1 %22, label %23, label %40

23:                                               ; preds = %20, %3
  %24 = call i32 @move(i32 0, i32 0)
  %25 = call i32 (...) @refresh()
  %26 = call i32 (...) @clrtoeol()
  %27 = load %struct.match_state*, %struct.match_state** %6, align 8
  %28 = getelementptr inbounds %struct.match_state, %struct.match_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 1, %29
  %31 = load %struct.match_state*, %struct.match_state** %6, align 8
  %32 = getelementptr inbounds %struct.match_state, %struct.match_state* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.match_state*, %struct.match_state** %6, align 8
  %34 = getelementptr inbounds %struct.match_state, %struct.match_state* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @bzero(i8* %35, i32 8)
  %37 = load i32, i32* @MATCH_TINKER_PATTERN_DOWN, align 4
  %38 = load %struct.match_state*, %struct.match_state** %6, align 8
  %39 = getelementptr inbounds %struct.match_state, %struct.match_state* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %4, align 4
  br label %161

40:                                               ; preds = %20, %15
  %41 = load %struct.match_state*, %struct.match_state** %6, align 8
  %42 = getelementptr inbounds %struct.match_state, %struct.match_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %161

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i8, i8* %8, align 1
  %49 = call i64 @isalnum(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %8, align 1
  %53 = call i64 @isgraph(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8, i8* %8, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %59, label %90

59:                                               ; preds = %55, %51, %47
  %60 = load i8, i8* %8, align 1
  %61 = load %struct.match_state*, %struct.match_state** %6, align 8
  %62 = getelementptr inbounds %struct.match_state, %struct.match_state* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.match_state*, %struct.match_state** %6, align 8
  %65 = getelementptr inbounds %struct.match_state, %struct.match_state* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %63, i64 %68
  store i8 %60, i8* %69, align 1
  %70 = load %struct.match_state*, %struct.match_state** %6, align 8
  %71 = getelementptr inbounds %struct.match_state, %struct.match_state* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.match_state*, %struct.match_state** %6, align 8
  %74 = getelementptr inbounds %struct.match_state, %struct.match_state* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %72, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.match_state*, %struct.match_state** %6, align 8
  %80 = getelementptr inbounds %struct.match_state, %struct.match_state* %79, i32 0, i32 2
  %81 = call i32 @adj_match_dir(i32* %80)
  %82 = load %struct.match_state*, %struct.match_state** %6, align 8
  %83 = getelementptr inbounds %struct.match_state, %struct.match_state* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.match_state*, %struct.match_state** %6, align 8
  %86 = getelementptr inbounds %struct.match_state, %struct.match_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @get_mext_match(i8* %84, i32 %87)
  %89 = load i32*, i32** %7, align 8
  store i32 %88, i32* %89, align 4
  br label %147

90:                                               ; preds = %55
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @KEY_DOWN, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i32, i32* @FIND_NEXT_MATCH_DOWN, align 4
  %96 = load %struct.match_state*, %struct.match_state** %6, align 8
  %97 = getelementptr inbounds %struct.match_state, %struct.match_state* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.match_state*, %struct.match_state** %6, align 8
  %99 = getelementptr inbounds %struct.match_state, %struct.match_state* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.match_state*, %struct.match_state** %6, align 8
  %102 = getelementptr inbounds %struct.match_state, %struct.match_state* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get_mext_match(i8* %100, i32 %103)
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %146

106:                                              ; preds = %90
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @KEY_UP, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load i32, i32* @FIND_NEXT_MATCH_UP, align 4
  %112 = load %struct.match_state*, %struct.match_state** %6, align 8
  %113 = getelementptr inbounds %struct.match_state, %struct.match_state* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.match_state*, %struct.match_state** %6, align 8
  %115 = getelementptr inbounds %struct.match_state, %struct.match_state* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.match_state*, %struct.match_state** %6, align 8
  %118 = getelementptr inbounds %struct.match_state, %struct.match_state* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @get_mext_match(i8* %116, i32 %119)
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  br label %145

122:                                              ; preds = %106
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @KEY_BACKSPACE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %5, align 4
  %128 = icmp eq i32 %127, 127
  br i1 %128, label %129, label %143

129:                                              ; preds = %126, %122
  %130 = load %struct.match_state*, %struct.match_state** %6, align 8
  %131 = getelementptr inbounds %struct.match_state, %struct.match_state* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.match_state*, %struct.match_state** %6, align 8
  %134 = getelementptr inbounds %struct.match_state, %struct.match_state* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strlen(i8* %135)
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %132, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load %struct.match_state*, %struct.match_state** %6, align 8
  %141 = getelementptr inbounds %struct.match_state, %struct.match_state* %140, i32 0, i32 2
  %142 = call i32 @adj_match_dir(i32* %141)
  br label %144

143:                                              ; preds = %126
  store i32 1, i32* %9, align 4
  br label %144

144:                                              ; preds = %143, %129
  br label %145

145:                                              ; preds = %144, %110
  br label %146

146:                                              ; preds = %145, %94
  br label %147

147:                                              ; preds = %146, %59
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = load %struct.match_state*, %struct.match_state** %6, align 8
  %152 = getelementptr inbounds %struct.match_state, %struct.match_state* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load %struct.match_state*, %struct.match_state** %6, align 8
  %154 = getelementptr inbounds %struct.match_state, %struct.match_state* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @bzero(i8* %155, i32 8)
  %157 = call i32 @move(i32 0, i32 0)
  %158 = call i32 (...) @refresh()
  %159 = call i32 (...) @clrtoeol()
  store i32 -1, i32* %4, align 4
  br label %161

160:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %150, %45, %23
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i64 @isgraph(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @adj_match_dir(i32*) #1

declare dso_local i32 @get_mext_match(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
